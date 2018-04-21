//int hex_char_value(char ss);
//int hex_to_decimal(const char* s);
#ifndef WAVREAD_H
#define WAVREAD_H
struct wav_struct
{
    unsigned int file_size;        //�ļ���С
	unsigned short channel;            //ͨ����
    unsigned int frequency;        //����Ƶ��
	unsigned long Bps;                //Byte��
	unsigned short sample_num_bit;    //һ��������λ��
    unsigned int data_size;        //���ݴ�С
    unsigned int num_per_channel;
    char *data;            //��Ƶ���� ,����char����
	double *wavdata;                //�洢ת����ĸ�����
};

int GetWavArgu(char *Filename,wav_struct* arg );
int wavread(char *Filename, wav_struct* arg,int pos);

#endif // WAVREAD_H
