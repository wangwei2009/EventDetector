#include "EventDetector.h"
#include "get_mel_basis.h"
#include "feature_normalizer.h"
#include "feature_aggregator.h"
#include "parameters.h"

EventDetector::EventDetector()
{
	mel_basis = get_mel_basis();
	fft_window = get_window();
}


EventDetector::~EventDetector()
{
}

MatrixXf EventDetector::detect(char * data, unsigned int frames, unsigned int channel)
{
	int frame_length = N_FFT;
	int hop_length = 44100 * 0.02;

	MatrixXf y(frames + N_FFT, 1);
	// Pad the time series so that frames are centered
	y = preprocessor.ParseWavdata(data, frames, channel);
	y = preprocessor.pad(y);

	// Compute the number of frames that will fit.The end may get truncated.
	int	n_frames = 1 + int((y.size() - frame_length) / hop_length);
	// enframe
	MatrixXf y_frames(frame_length, n_frames);
	for (int i = 0; i < n_frames; i++)
	{
		y_frames.col(i) = y.block(i*hop_length, 0, frame_length, 1);
	}

	// Pre - allocate the STFT matrix
	//Matrix<float, N_FFT, 1>stft_matrix;
	MatrixXf stft_matrix(N_FFT, n_frames);
	Matrix < complex<float>, N_FFT, 1> stft_matrix_complex;
	//MatrixXf fft_window = get_window();
	FFT<float> fft;

	for (int i = 0; i < n_frames; i++)
	{
		frame_windowed = (y_frames.col(i).array()*fft_window.array()).matrix();

		fft.fwd(stft_matrix_complex, frame_windowed);
		//cout << stft_matrix_complex(0, 0) << endl;

		//stft_matrix.col(i) = stft_matrix_complex.array().abs().matrix();

		stft_matrix.col(i) = (stft_matrix_complex.real().array()*stft_matrix_complex.real().array() +
			stft_matrix_complex.imag().array()*stft_matrix_complex.imag().array()).sqrt();
	}
	MatrixXf mel_spectrum(n_frames, 40);
	mel_spectrum = (mel_basis*stft_matrix.block(0, 0, N_FFT / 2 + 1, stft_matrix.cols())).array().log().matrix().transpose();

	MatrixXf feature_data = Normalize(mel_spectrum);
	MatrixXf aggregated_frame = Aggregate(feature_data);

	MatrixXf output_prob = AED.predict(aggregated_frame);
	output_prob = postprocessor.frame_binarization(output_prob);
	output_prob = postprocessor.frame_medfilt(output_prob);
	MatrixXf event_segments = postprocessor.find_contiguous_regions(output_prob);
	cout << event_segments << endl;
    return event_segments;
}
