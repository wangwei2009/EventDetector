#pragma once
#include <iostream>
#include <Eigen/Dense>
#include "wavread.h"


using namespace Eigen;
using Eigen::MatrixXd;
using Eigen::Matrix;
using namespace std;

class preprocessing
{
public:
    preprocessing();
    ~preprocessing();
    MatrixXf pad(wav_struct wav);
    MatrixXf pad(MatrixXf y);
    MatrixXf ParseWavdata(char *buffer, unsigned int frames, unsigned int channel);

};

