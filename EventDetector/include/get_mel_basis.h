#pragma once
#include <iostream>
#include "get_window.h"
#include <Eigen/Dense>

#include <unsupported/Eigen/FFT>

using namespace Eigen;
using Eigen::MatrixXd;
using Eigen::Matrix;

MatrixXf get_mel_basis();