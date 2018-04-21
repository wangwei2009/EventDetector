#pragma once
#include "model.h"
#include "preprocessing.h"
#include "postprocessing.h"
#include "weights.h"

#include <iostream>
#include <Eigen/Dense>


using namespace Eigen;
using Eigen::MatrixXd;
using Eigen::Matrix;
using namespace std;

class EventDetector
{
public:
	EventDetector();
	~EventDetector();
    MatrixXf detect(char * data, unsigned int frames, unsigned int channel);
	//Matrix <float, 40, 1025>mel_basis;
	MatrixXf mel_basis;
	MatrixXf fft_window;
	Matrix<float, 2048, 1> frame_windowed;
	model AED;
	preprocessing preprocessor;
	postprocessing postprocessor;
};

