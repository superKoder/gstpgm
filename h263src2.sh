#!/bin/sh

GST_PLUGIN_PATH=. gst-launch-0.10 \
	v4lsrc ! \
	videorate ! \
	video/x-raw-yuv,framerate=15/1 ! \
	videoscale ! \
	video/x-raw-yuv,width=352,height=288 ! \
	ffenc_h263 ! \
	rtph263pay ! \
	pgmsink network=";239.192.0.2" dport=7502 udp-encap-port=3057

