::最简单的基于FFmpeg示例程序合集 ---- CL批量编译
::simplest ffmpeg demos list ---- CL compile all
::
::雷霄骅 Lei Xiaohua
::leixiaohua1020@126.com
::中国传媒大学/数字电视技术
::Communication University of China / Digital TV Technology
::http://blog.csdn.net/leixiaohua1020
::
::该脚本用于批量编译[最简单的基于FFmpeg的示例程序合集]的代码。
::使用CL作为编译器
::[最简单的基于FFmpeg的示例程序合集]目前包含下列项目: 
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg player            | 最简单的基于FFMPEG的视频播放器
::  包括了如下几个子工程: 
::    simplest_ffmpeg_player:          标准版，FFmpeg学习的开始。
::    simplest_ffmpeg_player_su:       SU（SDL Update）版，加入了简单的SDL的Event。
::    simplest_ffmpeg_decoder_pure:    一个纯净的解码器只使用libavcodec（没有使用libavformat）。
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg audio player      | 最简单的基于FFMPEG的音频播放器
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg picture encoder   | 最简单的基于FFMPEG的图像编码器
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg video encoder     | 最简单的基于FFMPEG的视频编码器
::  包括了如下几个子工程: 
::    simplest_ffmpeg_video_encoder:   普通版编码器。使用libavcodec和libavformat编码并且封装视频。
::    simplest_ffmpeg_video_encoder_pure: 纯净版编码器。仅使用libavcodec编码视频，不使用libavformat。
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg audio encoder     | 最简单的基于FFMPEG的音频编码器
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg format            | 最简单的基于FFMPEG的封装格式处理
::  包括了如下几个子工程: 
::    simplest_ffmpeg_demuxer:         视音频分离器。
::    simplest_ffmpeg_demuxer_simple:  视音频分离器（简化版）。
::    simplest_ffmpeg_muxer:           视音频复用器。
::    simplest_ffmpeg_remuxer:         封装格式转换器。
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg streamer          | 最简单的基于FFmpeg的推流器（推送RTMP）
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg video filter      | 最简单的基于FFmpeg的AVfilter例子（水印叠加）
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg swscale           | 最简单的基于FFmpeg的libswscale的示例
::  包括了如下几个子工程: 
::    simplest_ffmpeg_swscale:         最简单的libswscale的教程。
::    simplest_pic_gen:                生成各种测试图片的工具。
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg device            | 最简单的基于FFmpeg的AVDevice例子
::  包括了如下几个子工程: 
::    simplest_ffmpeg_grabdesktop:     屏幕录制。
::    simplest_ffmpeg_readcamera:      读取摄像头。
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg mem handler       | 最简单的基于FFmpeg的内存读写例子
::  包括了如下几个子工程: 
::    simplest_ffmpeg_mem_player:      播放内存中视频数据的播放器。
::    simplest_ffmpeg_mem_transcoder:  转码内存中数据的转码器。
::
::=====================================================================================
::
::
::This Batch file is used to compile all the source code of 
::[simplest ffmpeg demos list]. It uses CL as compiler.
::[simplest ffmpeg demos list] contains following projects:
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg player
::  It contains following projects:
::    simplest_ffmpeg_player:          Standard Version, suitable for biginner.
::    simplest_ffmpeg_player_su:       SU（SDL Update）Version, Add SDL Event.
::    simplest_ffmpeg_decoder_pure:    A pure decoder.It only uses libavcodec (without libavformat).
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg audio player
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg picture encoder
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg video encoder
::  It contains following projects:
::    simplest_ffmpeg_video_encoder:   A video encoder. It uses libavcodec and libavformat.
::    simplest_ffmpeg_video_encoder_pure: Pure video encoder. It only uses libavcodec (without libavformat).
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg audio encoder
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg format
::  It contains following projects:
::    simplest_ffmpeg_demuxer:         Split Audio and Video bitstreams.
::    simplest_ffmpeg_demuxer_simple:  Split Audio and Video bitstreams.
::    simplest_ffmpeg_muxer:           Put Audio and Video bitstreams together.
::    simplest_ffmpeg_remuxer:         Change Container Fomat of Video file.
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg streamer
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg video filter
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg swscale
::  It contains following projects:
::    simplest_ffmpeg_swscale:         Convert pixel data's format (from YUV420P to RGB24)
::    simplest_pic_gen:                Generate some test pictures (Gray Bar, Color Bar ...)
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg device
::  It contains following projects:
::    simplest_ffmpeg_grabdesktop:     Screen Capture.
::    simplest_ffmpeg_readcamera:      Read Camera.
::-------------------------------------------------------------------------------------
::  *simplest ffmpeg mem handler
::  It contains following projects:
::    simplest_ffmpeg_mem_player:      Video Player that play video data in memory.
::    simplest_ffmpeg_mem_transcoder:  Video Converter that convert video data in memory.
::=====================================================================================
@echo off
echo ---------------------------------------------
echo simplest ffmpeg demos list ---- CL compile all
echo Lei Xiaohua
echo Communication University of China / Digital TV Technology
echo leixiaohua1020@126.com
echo http://blog.csdn.net/leixiaohua1020
echo ---------------------------------------------
::=====================================================================================

echo.
echo Compile simplest_ffmpeg_player...
cd simplest_ffmpeg_player
cd simplest_ffmpeg_player
start /wait compile_cl.bat
cd ..
cd simplest_ffmpeg_player_su
start /wait compile_cl.bat
cd ..
cd simplest_ffmpeg_decoder_pure
start /wait compile_cl.bat
cd ..
cd ..

::=====================================================================================
echo.
echo Compile simplest_ffmpeg_audio_player...
cd simplest_ffmpeg_audio_player
cd simplest_ffmpeg_audio_player
start /wait compile_cl.bat
cd ..
cd ..

::=====================================================================================
echo.
echo Compile simplest_ffmpeg_picture_encoder...
cd simplest_ffmpeg_picture_encoder
cd simplest_ffmpeg_picture_encoder
start /wait compile_cl.bat
cd ..
cd ..

::=====================================================================================
echo.
echo Compile simplest_ffmpeg_video_encoder...
cd simplest_ffmpeg_video_encoder
cd simplest_ffmpeg_video_encoder
start /wait compile_cl.bat
cd ..
cd simplest_ffmpeg_video_encoder_pure
start /wait compile_cl.bat
cd ..
cd ..

::=====================================================================================
echo.
echo Compile simplest_ffmpeg_audio_encoder...
cd simplest_ffmpeg_audio_encoder
cd simplest_ffmpeg_audio_encoder
start /wait compile_cl.bat
cd ..
cd ..

::=====================================================================================
echo.
echo Compile simplest_ffmpeg_streamer...
cd simplest_ffmpeg_streamer
cd simplest_ffmpeg_streamer
start /wait compile_cl.bat
cd ..
cd ..

::=====================================================================================
echo.
echo Compile simplest_ffmpeg_mem_handler...
cd simplest_ffmpeg_mem_handler
cd simplest_ffmpeg_mem_player
start /wait compile_cl.bat
cd ..
cd simplest_ffmpeg_mem_transcoder
start /wait compile_cl.bat
cd ..
cd ..

::=====================================================================================
echo.
echo Compile simplest_ffmpeg_device...
cd simplest_ffmpeg_device
cd simplest_ffmpeg_grabdesktop
start /wait compile_cl.bat
cd ..
cd simplest_ffmpeg_readcamera
start /wait compile_cl.bat
cd ..
cd ..

::=====================================================================================
echo.
echo Compile simplest_ffmpeg_format...
cd simplest_ffmpeg_format
cd simplest_ffmpeg_demuxer
start /wait compile_cl.bat
cd ..
cd simplest_ffmpeg_demuxer_simple
start /wait compile_cl.bat
cd ..
cd simplest_ffmpeg_muxer
start /wait compile_cl.bat
cd ..
cd simplest_ffmpeg_remuxer
start /wait compile_cl.bat
cd ..
cd ..

::=====================================================================================
echo.
echo Compile simplest_ffmpeg_video_filter...
cd simplest_ffmpeg_video_filter
cd simplest_ffmpeg_video_filter
start /wait compile_cl.bat
cd ..
cd ..

::=====================================================================================
echo.
echo Compile simplest_ffmpeg_swscale...
cd simplest_ffmpeg_swscale
cd simplest_ffmpeg_swscale
start /wait compile_cl.bat
cd ..
cd simplest_pic_gen
start /wait compile_cl.bat
cd ..
cd ..

::=====================================================================================