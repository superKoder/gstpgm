#!/bin/sh

GST_PLUGIN_PATH=. gst-launch-0.10 \
	pgmsrc ! \
	oggdemux ! \
	theoradec ! \
	videoscale ! \
	video/x-raw-yuv,width=640,height=480 ! \
	timeoverlay ! \
	autovideosink
