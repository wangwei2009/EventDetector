#ifndef TEST_AUDIO_H
#define TEST_AUDIO_H


/*
 * test_audio.c
 *
 * History:
 *	2008/06/27 - [Cao Rongrong] created file
 *	2008/11/14 - [Cao Rongrong] support PAUSE and RESUME
 *	2009/02/24 - [Cao Rongrong] add duplex, playback support more format
 *	2009/03/02 - [Cao Rongrong] add xrun
 *
 *	Copyright (C) 2007-2008, Ambarella, Inc.
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version.
 *
 *  This program will record the sound data to a file. It will run almost infinite,
 *  you can type "CTRL + C" to terminate it.
 *
 *  When the file is recorded, you can play it by "aplay". But you should pay
 *  attention to the option of "aplay", if the option is incorrect, you may hear
 *  noise rather than the sound you record just now.
 */


#include <alsa/asoundlib.h>
#include <assert.h>
#include <sys/signal.h>
#include <sys/time.h>
#include "basetypes.h"
#include <string.h>
#include <getopt.h>

#include "formats.h"
//#include "audio_encode.h"

/* The file record/provide the sound data */
//#define FILE_NAME	"/mnt/test_audio.dat"
#define FILE_NAME	"speech16000.snd"

/* The sound format you want to record */
#define DEFAULT_FORMAT		SND_PCM_FORMAT_S16_LE//SND_PCM_FORMAT_A_LAW//SND_PCM_FORMAT_S16_LE //  SND_PCM_FORMAT_MU_LAW//
#define DEFAULT_RATE		16000
#define DEFAULT_CHANNELS	1

#ifndef LLONG_MAX
#define LLONG_MAX	9223372036854775807LL
#endif


//static struct {
//        snd_pcm_format_t format;
//        unsigned int channels;
//        unsigned int rate;
//} hwparams;

struct para{
        snd_pcm_format_t format;
        unsigned int channels;
        unsigned int rate;
};

typedef struct
{
                unsigned int	fmtMagic;
                unsigned int	fmtSize;
                WaveFmtBody		fmtBody;
}WaveFmt;

typedef struct
{
        WaveHeader 		wavHeader;
        WaveFmt			waveFmt;
        WaveChunkHeader	ChunkHeader;
} WaveContainer;

typedef struct
{
        WaveHeader 		wavHeader;
        WaveFmt			waveFmt;
        unsigned short	extra_bytes;
        WaveChunkHeader	ChunkHeader;
} WaveContainer2;

typedef struct
{
        char* 	samples;
        int		ratio;
        int		offset;
        int 	size;
} AudioConverter;



int audio(snd_pcm_t *handle,int argc, char *argv[],int a);
static void usage(void);
snd_pcm_uframes_t set_params(snd_pcm_t *handle, snd_pcm_stream_t stream);
/* I/O error handler */
static void xrun(snd_pcm_t *handle,snd_pcm_stream_t stream);
static snd_pcm_uframes_t handle_data_pb(snd_pcm_t *handle,ssize_t count, u_char *data, u_char *tmp);
static size_t pcm_read(snd_pcm_t *handle,snd_pcm_uframes_t chunk_size, u_char *data, size_t rcount);
static size_t handle_data_cp(snd_pcm_t *handle,snd_pcm_uframes_t chunk_size, u_char *data, u_char *tmp);
static ssize_t pcm_write(snd_pcm_t *handle,snd_pcm_uframes_t chunk_size, u_char *data);
void playback(snd_pcm_t *handle,snd_pcm_uframes_t chunk_size);
void capture(snd_pcm_t *handle,snd_pcm_uframes_t chunk_size);
static int run_duplex(snd_pcm_t *handle,snd_pcm_stream_t stream);
void signal_pause(int sig);
static int check_wav_valid(WaveContainer *container);
static int check_output_format(WaveContainer *inputContainer);
static WaveContainer gen_wave_header(WaveContainer *inputContainer);
static int refill_container(int fd, WaveContainer *container);
static int parse_wav(int fd, WaveContainer *container);
static int init_converter(WaveContainer *inputContainer, WaveContainer *outputContainer,
        AudioConverter *converter, int levels, int count);
static void convert_bitdepth(void* in, void* out, int in_dep, int out_dep, int bsize);
static void convert_channels(void* in, void* out, int depth, int in_chs, int out_chs, int bsize);
static void convert_rate(void* in, void* out, int spl_size, int ratio, int bsize);
static void free_converter();
static int write_content(int fd_in, WaveContainer *inputContainer,
        int fd_out, WaveContainer *outputContainer);
static int transform_wav();
//int main(int argc, char *argv[]);


#endif // TEST_AUDIO_H
