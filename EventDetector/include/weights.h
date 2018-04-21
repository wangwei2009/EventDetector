#pragma once
#include <iostream>
#include "get_window.h"
#include <Eigen/Dense>

#include <unsupported/Eigen/FFT>

using namespace Eigen;
using Eigen::MatrixXd;
using Eigen::Matrix;

MatrixXf get_input2layer1();
MatrixXf get_layer1bias();
MatrixXf get_layer12layer2();
MatrixXf get_layer2bias();
MatrixXf get_layer12output();
MatrixXf get_outputbias();