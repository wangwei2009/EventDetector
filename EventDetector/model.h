#pragma once

#include <iostream>
#include <Eigen/Dense>


using namespace Eigen;
using Eigen::MatrixXd;
using Eigen::Matrix;
typedef struct
{
	MatrixXf input_to_layer1;
	MatrixXf bias_layer1;
	MatrixXf layer1_to_layer2;
	MatrixXf bias_layer2;
	MatrixXf layer2_to_output;
	MatrixXf bias_output;

}Weights;
class model
{
public:
	model();
	~model();

	Weights weights;

	MatrixXf predict(MatrixXf feature_data);

	MatrixXf ReLU(MatrixXf input);

	/*
	      MLP sigmoid output
	                1
	     f(x) = -----------
	            1 + exp(-x)
	*/
	MatrixXf sigmoid(MatrixXf input);

};

