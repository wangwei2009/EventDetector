#include <iostream>
#include "get_window.h"
#include <Eigen/Dense>
#include "File.h"
#include<string>

using namespace std;
extern string filepath;// = "weights/3/";

#include <unsupported/Eigen/FFT>

using namespace Eigen;
using Eigen::MatrixXd;
using Eigen::Matrix;

MatrixXf get_input2layer1()
{
	float input_to_layer1[100 * 400];
	
	Read_File(input_to_layer1, 100 * 400, filepath+"input_to_layer1.txt");

	Map<MatrixXf> input2layer1(input_to_layer1, 100, 400);
	return input2layer1.transpose();
}
MatrixXf get_layer1bias()
{
	float bias_layer1[100 * 1];

	Read_File(bias_layer1, 100 * 1, filepath+"bias_layer1.txt");

	Map<MatrixXf> BiasLayer1(bias_layer1, 100, 1);
	return BiasLayer1.transpose();
}
MatrixXf get_layer12layer2()
{
	float layer1_to_layer2[100 * 100];
	Read_File(layer1_to_layer2, 100 * 100, filepath + "layer1_to_layer2.txt");

	Map<MatrixXf> Layer1_to_Layer2(layer1_to_layer2, 100, 100);
	return Layer1_to_Layer2.transpose();
}
MatrixXf get_layer2bias()
{
	float bias_layer2[100 * 1];
	Read_File(bias_layer2, 100 * 1, filepath + "bias_layer2.txt");

	Map<MatrixXf> BiasLayer2(bias_layer2, 100, 1);
	return BiasLayer2.transpose();
}
MatrixXf get_layer12output()
{
	float layer2_to_output[2 * 100];
	Read_File(layer2_to_output, 2 * 100, filepath + "layer2_to_output.txt");

	Map<MatrixXf> Layer2_to_Output(layer2_to_output, 2, 100);
	return Layer2_to_Output.transpose();
}
MatrixXf get_outputbias()
{
	MatrixXf BiasOutput(1,2);
	Read_File(BiasOutput, filepath + "bias_output.txt");
	//BiasOutput <<
	//	-6.707094609737396240e-02,
	//	-5.290204659104347229e-02;

	return BiasOutput;

}
