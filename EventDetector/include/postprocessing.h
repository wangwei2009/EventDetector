#pragma once
#include "model.h"
#include "weights.h"

#include <iostream>
#include <Eigen/Dense>


using namespace Eigen;
using Eigen::MatrixXd;
using Eigen::Matrix;
using namespace std;

class postprocessing
{
public:
	postprocessing();
	~postprocessing();
    MatrixXf PadZeros(MatrixXf y,int pad_length);
	MatrixXf frame_binarization(MatrixXf feature_data);
	MatrixXf frame_medfilt(MatrixXf feature_data);
	MatrixXf find_contiguous_regions(MatrixXf binary_data);
	
private:
	vector<int> logical_xor(MatrixXf x1, MatrixXf x2);

};

