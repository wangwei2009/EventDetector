#include <iostream>
#include <Eigen/Dense>
#include "wavread.h"
#include "get_window.h"
#include "get_mel_basis.h"
#include "feature_normalizer.h"
#include "feature_aggregator.h"
#include "parameters.h"
#include "weights.h"
#include "model.h"
#include "preprocessing.h"
#include "postprocessing.h"
#include <unsupported/Eigen/FFT>

#include<time.h>

using namespace Eigen;
using Eigen::MatrixXd;
using Eigen::Array;
using Eigen::Matrix;

using namespace std;

int TestLocalFile(const char *filename)
{
	clock_t start_time = clock();

	int frame_length = N_FFT;
	int hop_length = 44100 * 0.02;

	wav_struct wav;
	cout << sizeof(wav.channel) << endl;
	cout << sizeof(wav.frequency) << endl;

    //char *filename = "record1.wav";

	int pos = GetWavArgu(filename, &wav);
	wav.wavdata = new double[wav.num_per_channel];
	wavread(filename, &wav, pos);

	MatrixXf y(wav.num_per_channel + N_FFT, 1);
	// Pad the time series so that frames are centered
    preprocessing preprocessor;
    y = preprocessor.ParseWavdata(wav.data,wav.num_per_channel,wav.channel);
    y = preprocessor.pad(y);
    //MatrixXf y0 = preprocessor.pad(wav);
    //y = preprocessor.pad(wav);


	// Compute the number of frames that will fit.The end may get truncated.
	int	n_frames = 1 + int((y.size() - frame_length) / hop_length);
	cout << "n_frames = " << n_frames << endl;

	MatrixXf y_frames(frame_length, n_frames);
	for (int i = 0; i < n_frames; i++)
	{
		y_frames.col(i) = y.block(i*hop_length, 0, frame_length, 1);
	}
	cout << "y_frames.size()=" << y_frames.block(296, 243, 1, 6) << endl;

	// Pre - allocate the STFT matrix
	MatrixXf stft_matrix(N_FFT, n_frames);
	Matrix < complex<float>, N_FFT, 1> stft_matrix_complex;
	MatrixXf fft_window = get_window();
	FFT<float> fft;

	Eigen::Matrix<float, 2048, 1> frame_windowed;
	for (int i = 0; i < n_frames; i++)
	{
		frame_windowed = (y_frames.col(i).array()*fft_window.array()).matrix();

		fft.fwd(stft_matrix_complex, frame_windowed);
		//cout << stft_matrix_complex(0, 0) << endl;

		//stft_matrix.col(i) = stft_matrix_complex.array().abs().matrix();

		stft_matrix.col(i) = (stft_matrix_complex.real().array()*stft_matrix_complex.real().array() +
			stft_matrix_complex.imag().array()*stft_matrix_complex.imag().array()).sqrt();
	}
	cout << "stft_matrix =" << stft_matrix.block(158, 10, 1, 5) << endl;
	MatrixXf mel_basis(40, 1025);
	mel_basis = get_mel_basis();

	MatrixXf mel_spectrum(n_frames, 40);
	mel_spectrum = (mel_basis*stft_matrix.block(0, 0, N_FFT / 2 + 1, stft_matrix.cols())).array().log().matrix().transpose();
	cout << mel_spectrum.rows() << "X" << mel_spectrum.cols() << endl;


	MatrixXf feature_data = Normalize(mel_spectrum);

	cout << feature_data.block(210, 23, 1, 10) << endl;

	MatrixXf aggregated_frame = Aggregate(feature_data);

	////cout<< mel_spectrum.block(25,240,1,10)<<endl;
	//cout << "aggregated_frame.block(250, 180, 1, 10) = "<<aggregated_frame.block(250, 180, 1, 10) << endl;

	model AED;
	MatrixXf output_prob = AED.predict(aggregated_frame);

	postprocessing postprocessor;
	output_prob = postprocessor.frame_binarization(output_prob);
	//cout << "output_prob = " << output_prob.transpose() << endl;

	output_prob = postprocessor.frame_medfilt(output_prob);
	//cout << "final output_prob = " << output_prob.transpose() << endl;

	MatrixXf event_segments = postprocessor.find_contiguous_regions(output_prob);
	cout << event_segments << endl;



	cout << "Hello World!" << endl;
	delete[] wav.wavdata;

	clock_t end_time = clock();
	cout << "time cost:" << 1.0*(end_time - start_time) / CLOCKS_PER_SEC * 1000 << "ms" << endl;
	return 0;
}
