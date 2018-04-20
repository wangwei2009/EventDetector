#include "preprocessing.h"
#include "parameters.h"


preprocessing::preprocessing()
{
}


preprocessing::~preprocessing()
{
}

MatrixXf preprocessing::pad(wav_struct wav)
{
    MatrixXf y(wav.num_per_channel + N_FFT, 1);
    for (int i = 0; i < N_FFT / 2; i++)
    {
        y(i) = wav.wavdata[N_FFT / 2 - i];
    }

    for (int j = 0; j < wav.num_per_channel; j++)
    {
        y(N_FFT / 2 + j) = wav.wavdata[j];
    }

    for (int i = 0; i < N_FFT / 2; i++)
    {
        y(N_FFT / 2 + wav.num_per_channel + i) = wav.wavdata[wav.num_per_channel - 2 - i];
    }

    return y;
}

MatrixXf preprocessing::pad(MatrixXf x)
{
    MatrixXf y(x.size() + N_FFT, 1);
    for (int i = 0; i < N_FFT / 2; i++)
    {
        y(i) = x(N_FFT / 2 - i);
    }

    for (int j = 0; j < x.size(); j++)
    {
        y(N_FFT / 2 + j) = x(j);
    }

    for (int i = 0; i < N_FFT / 2; i++)
    {
        y(N_FFT / 2 + x.size() + i) = x(x.size() - 2 - i);
    }

    return y;
}


MatrixXf preprocessing::ParseWavdata(char * data, unsigned int frames, unsigned int channel)
{
    int count = 0;
    MatrixXf output(1, frames);
    for (int i = 0; i < frames*channel*2; (channel == 1) ? (i = i + 2) : (i = i + 4))
    {

        //右边为大端
        unsigned long data_low = (unsigned char)data[i];
        unsigned long data_high = (unsigned char)data[i + 1];
        //double data_true = data_high <<8 + data_low;
        double data_true = data_high * 256 + data_low;
        //printf("%d ",data_true);
        long data_complement = 0;
        //取大端的最高位（符号位）
        int my_sign = (int)(data_high >> 7);
        //int my_sign = (int)(data_high /128);
        //printf("%d ", my_sign);
        if (my_sign == 1)
        {
            data_complement = data_true - 65536;
        }
        else
        {
            data_complement = data_true;
        }
        //printf("%d ", data_complement);
        //setprecision(4);
        double float_data = (double)(data_complement / (double)32768);
        output(count) = float_data;
        //fseek(fp,0L,2);//
        //fwrite(&float_data, sizeof(float_data), 1, fp);

        //cout<<float_data<<endl;
        count++;
    }
    //fclose(fp);

    return output;
}
