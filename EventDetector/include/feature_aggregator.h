#pragma once
#include "feature_aggregator.h"
#include <iostream>
#include "get_window.h"
#include <Eigen/Dense>

#include <unsupported/Eigen/FFT>

#define Aggregete_Frame 10

using namespace Eigen;
using Eigen::MatrixXd;
using Eigen::Matrix;
MatrixXf Aggregate(MatrixXf feature_data);