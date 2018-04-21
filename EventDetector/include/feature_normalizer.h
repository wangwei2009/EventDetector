#pragma once
#pragma once
#include <iostream>
#include "get_window.h"
#include <Eigen/Dense>

#include <unsupported/Eigen/FFT>

using namespace Eigen;
using Eigen::MatrixXd;
using Eigen::Matrix;

MatrixXf get_mean();
MatrixXf get_std();
MatrixXf Normalize(MatrixXf feature_data);