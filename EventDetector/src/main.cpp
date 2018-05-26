#include <iostream>
#include <Eigen/Dense>
#include "wavread.h"
#include "get_window.h"
#include "get_mel_basis.h"
#include "feature_normalizer.h"
#include "feature_aggregator.h"
#include "parameters.h"
#include "weights.h"
#include "model.h"
#include "preprocessing.h"
#include "postprocessing.h"
#include <unsupported/Eigen/FFT>
#include "TestLocalFile.h"
#include "EventDetector.h"
#include<time.h>
#include <alsa/asoundlib.h>
#include<string>
using namespace Eigen;
using Eigen::MatrixXd;
using Eigen::Array;
using Eigen::Matrix;

using namespace std;

extern double mel[40][1025];
int main(int argc, char *argv[])
{
	
        // +------------------------------------------------------+
        // | Arguments                                            |
        // +------------------------------------------------------+  

            char *file_config = (char *) NULL;
            char verbose = 0x00;
			int c;

            //type = processing_multithread;

            while ((c = getopt(argc,argv, "w:hsv")) != -1) {

                switch(c) {

                    case 'w':

                        file_config = (char *) malloc(sizeof(char) * (strlen(optarg)+1));
                        strcpy(file_config, optarg); 
                        TestLocalFile(file_config);
						return 0;						

                    break;

                    case 'h':

                        printf("+----------------------------------------------------+\n");
                        printf("|        AED (Audio Event Detection)                 |\n");
                        printf("+----------------------------------------------------+\n");
                        printf("| Author:      Wang Wei                              |\n");
                        printf("| Repository:  github.com/wangwei2009/EventDetector  |\n");
                        printf("| Version:     1.0                                   |\n");
                        printf("+----------------------------------------------------+\n");        
                        printf("| -w       Configuration file (.cfg)                 |\n");
                        printf("| -h       Help                                      |\n");
                        printf("| -s       Process sequentially (no multithread)     |\n");
                        printf("| -v       Verbose                                   |\n");
                        printf("+----------------------------------------------------+\n");                

                        exit(EXIT_SUCCESS);

                    break;

                    case 's':

                        //type = processing_singlethread;

                    break;

                    case 'v':

                        verbose = 0x01;

                    break;

                }

            }

            if (file_config == NULL) {
                printf("Missing configuration file.\n");
                exit(EXIT_FAILURE);
            }

//    TestLocalFile();
//    return 0;

//    clock_t start_time = clock();
//    char *filename = "record.wav";

//    wav_struct wav;
//    int pos = GetWavArgu(filename, &wav);
//    wav.wavdata = new double[wav.num_per_channel];
//    wavread(filename, &wav, pos);

    EventDetector Detector;

//    MatrixXf event_segments = Detector.detect(wav.data, wav.num_per_channel, wav.channel);
////    clock_t end_time = clock();
////    cout << "time cost:" << 1.0*(end_time - start_time) / CLOCKS_PER_SEC * 1000 << "ms" << endl;

//    cout<<event_segments<<endl;
//    cout<<"done!"<<endl;

//    return 0;

    long loops;
    int rc;
    int size;
    snd_pcm_t *handle;
    snd_pcm_hw_params_t *params;
    unsigned int val;
    int dir;
    snd_pcm_uframes_t frames;
    unsigned char *buffer;
    /* Open PCM device for recording (capture). */
    rc = snd_pcm_open(&handle, "default",SND_PCM_STREAM_CAPTURE, 0);
    if (rc < 0) {
        fprintf(stderr,
        "unable to open pcm device: %s\n",
        snd_strerror(rc));
        exit(1);
        }
    /* Allocate a hardware parameters object. */
    snd_pcm_hw_params_alloca(&params);
    /* Fill it in with default values. */
    snd_pcm_hw_params_any(handle, params);
    /* Set the desired hardware parameters. */
    /* Interleaved mode */
    snd_pcm_hw_params_set_access(handle, params,SND_PCM_ACCESS_RW_INTERLEAVED);
    /* Signed 16-bit little-endian format */
    snd_pcm_hw_params_set_format(handle, params,SND_PCM_FORMAT_S16_LE);
    /* Two channels (stereo) */
    int channel = 1;

    snd_pcm_hw_params_set_channels(handle, params, channel);
    /* 44100 bits/second sampling rate (CD quality) */
    val = 44100;
    snd_pcm_hw_params_set_rate_near(handle, params,	&val, &dir);
    /* Set period size to 32 frames. */
    frames = 32;
    snd_pcm_hw_params_set_period_size_near(handle,params, &frames, &dir);


    unsigned int min,max;
    snd_pcm_hw_params_get_channels_min(params, &min);
    snd_pcm_hw_params_get_channels_max(params, &max);
    cout<<"min = "<<min<<endl;
    cout<<"max = "<<max<<endl;

    unsigned int v;
    int d;
    snd_pcm_hw_params_get_rate_min(params, &min,&d);
    cout<<"min = "<<min<<endl;
    snd_pcm_hw_params_get_rate_max(params, &max,&d);
    cout<<"max = "<<max<<endl;

    /* Write the parameters to the driver */
    rc = snd_pcm_hw_params(handle, params);
    if (rc < 0) {
        fprintf(stderr,"unable to set hw parameters: %s\n",snd_strerror(rc));
        exit(1);
        }

    /* Use a buffer large enough to hold one period */
    snd_pcm_hw_params_get_period_size(params,&frames, &dir);
    int byte_per_sample = 2;
    size = frames * byte_per_sample*channel; /* 2 bytes/sample, 2 channels */
    buffer = (unsigned char *) malloc(size);
    /* We want to loop for 5 seconds */
    snd_pcm_hw_params_get_period_time(params,&val, &dir);



//    return 0;
    static int fd = -1;

    int interval = 5000000;

    loops = 3000000 / val;
    int loos_0 = loops;
    int ops = 0;
    unsigned char *buf_pcm = (unsigned char*)malloc(loops*size);

    MatrixXf event_segments;
    string falseCount = "0";
    const char * name = "false0.snd";
    while(1){
    loops = loos_0;
    while (loops > 0)
        {
        loops--;
        rc = snd_pcm_readi(handle, buffer, frames);
        if (rc == -EPIPE)
            {
                /* EPIPE means overrun */
                fprintf(stderr, "overrun occurred\n");
                snd_pcm_prepare(handle);
            } else if (rc < 0)
            {
                fprintf(stderr,"error from read: %s\n",snd_strerror(rc));
                } else if (rc != (int)frames)
                {
                    fprintf(stderr, "short read, read %d frames\n", rc);
                }
                memcpy(buf_pcm + ops, buffer, size);
                ops +=size;
//                Detector.detect(buffer,frames,1);
//                rc = write(1, buffer, size);
//                if (rc != size)
//                fprintf(stderr,"short write: wrote %d bytes\n", rc);
        }
    ops = 0;
//    rc = write(fd, buf_pcm, loos_0*size);
    clock_t start_time = clock();
    event_segments = Detector.detect((char *)buf_pcm,loos_0*frames,1);
    clock_t end_time = clock();
    cout << "time cost:" << 1.0*(end_time - start_time) / CLOCKS_PER_SEC * 1000 << "ms" << endl;
    if(event_segments.rows()>0)
    {

//        if ((fd = open(name, O_WRONLY | O_CREAT, 0644)) == -1) {
//            perror(name);
//            exit(EXIT_FAILURE);
//        }
//        rc = write(fd, buf_pcm, loos_0*size);
        cout<<"haha"<<endl;
//        close(fd);
//        name[5]++;
//        break;
    }
    else
        cout<<"NO"<<endl;
//    if (rc != loos_0*size)
//    fprintf(stderr,"short write: wrote %d bytes\n", rc);
}


    snd_pcm_drain(handle);
    snd_pcm_close(handle);
    free(buffer);

    return 0;

}
