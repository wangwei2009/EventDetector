#include "feature_aggregator.h"
#include <iostream>
#include "get_window.h"
#include "parameters.h"
#include <Eigen/Dense>

#include <unsupported/Eigen/FFT>

using namespace Eigen;
using Eigen::MatrixXd;
using Eigen::Matrix;
MatrixXf Aggregate(MatrixXf feature_data)
{
	MatrixXf AggregatedFeature(feature_data.rows(), feature_data.cols()*n_Aggregate);
	int start_frame, end_frame;
	//int frame_id[10] = { -5,-4,-3,-2,-1,0,1,2,3,4};
	MatrixXf current_frame(n_Aggregate,n_mels);

	int n_frames = feature_data.rows();
	
	for (int frame = 0; frame < n_frames; frame++)
	{
		start_frame = frame - 5;
		end_frame = frame + 5;
		VectorXi frame_id = VectorXi::LinSpaced(10, start_frame, end_frame);
		for (int i = 0; i < n_Aggregate; i++)
		{
			//frame_id[i] = -5 + i;
			if (frame_id[i] < 0)
			{
				// If start of feature matrix, pad with first frame
				frame_id[i] = 0;
				current_frame.row(i) = feature_data.row(frame_id[i]);
			}
			else
			{
				// If end of the feature matrix, pad with last frame
				if (frame_id[i]>feature_data.rows()-1)
				{
					current_frame.row(i) = feature_data.row(feature_data.rows() - 1);
				}
				else
				{
					//current_frame.block(i,0, n_Aggregate - i,feature_data.cols()) = feature_data.block(frame_id[i],0, n_Aggregate - i,feature_data.cols());
					current_frame.row(i) = feature_data.row(frame_id[i]);
					//break;
				}
			}
				
			
		}

		Matrix<float, Dynamic, Dynamic, RowMajor> M2(current_frame);
		Map<RowVectorXf> v2(M2.data(), M2.size());
		AggregatedFeature.row(frame) = v2.matrix();

	}
	return AggregatedFeature;
}