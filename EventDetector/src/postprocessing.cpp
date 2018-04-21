#include "postprocessing.h"
#include "parameters.h"



postprocessing::postprocessing()
{
}


postprocessing::~postprocessing()
{
}

MatrixXf postprocessing::PadZeros(MatrixXf x, int pad_length)
{
    MatrixXf y(1,x.size() + pad_length);
    for (int i = 0; i < pad_length/2; i++)
    {
        y(i) = 0;
    }

    for (int j = 0; j < x.size(); j++)
    {
        y(pad_length/2 + j) = x(j);
    }

    for (int i = 0; i < pad_length/2; i++)
    {
        y(pad_length/2 + x.size() + i) = 0;
    }

    return y;
}

MatrixXf postprocessing::frame_binarization(MatrixXf MLP_output)
{
    MatrixXf mlp_out = MLP_output.row(0);
    MatrixXf output = mlp_out;
    for (int i = 0; i < mlp_out.size(); i++)
    {
        if (mlp_out(i) > threshold)
        {
            output(i) = 1;
        }
        else
        {
            output(i) = 0;
        }

    }
    return output;
}

MatrixXf postprocessing::frame_medfilt(MatrixXf binary_data)
{
    MatrixXf output = binary_data;
    MatrixXf binary_data_pad = PadZeros(binary_data, window_length);
    vector<int> frame_bin(27);
    vector<int> pad_bin(13,0);

    RowVector3f b;
    char t = 0;
    int n_frames = binary_data_pad.size();

    for (int i = 13; i < n_frames-13-1; i++)
    {
        t = 0;
        for (int j = i-13; j <= i+13; j++)
        {
            frame_bin[t] = binary_data_pad(j);
            t++;
        }
        std::sort(frame_bin.begin(), frame_bin.end());
        output(i-13) = frame_bin[13];
    }
    return output;
}

MatrixXf postprocessing::find_contiguous_regions(MatrixXf activity_array)
{
    vector<int> change_indices = logical_xor(activity_array.block(0, 1, 1,activity_array.cols() - 1), activity_array.block(0, 0, 1,activity_array.cols() - 1));

    //If the first element of activity_array is True add 0 at the beginning
    if (activity_array(0)==1)
    {
        change_indices.insert(change_indices.begin(), 0);
    }

    //If the last element of activity_array is True, add the length of the array
    if (activity_array(activity_array.cols()-1))
    {
        change_indices.insert(change_indices.end(), activity_array.size());
    }

    int envent_count = change_indices.size() / 2;
    MatrixXf event_segments(envent_count, 2);
    for (int i = 0; i < envent_count; i++)
    {
        event_segments(i, 0) = change_indices[i*2];
        event_segments(i, 1) = change_indices[i*2 + 1];
        //i++;
    }
    return event_segments*hop_length_seconds;
}

vector<int> postprocessing::logical_xor(MatrixXf x1, MatrixXf x2)
{
    MatrixXf change_indices(1, x1.cols());
    vector<int>indices;
    int change_count;
    if (x1.size()!=x2.size())
    {
        vector<int> ERROR{ -1 };
        cout << "ERROR:only support same size for x1 and x2\n";
        return ERROR;
    }
    else
    {
        for (int i = 0; i < x1.size(); i++)
        {
            if (x1(i)==x2(i))
            {
                change_indices(i) = 0;
            }
            else
            {
                indices.push_back(i+1);
            }
        }
    }
    return indices;
}
