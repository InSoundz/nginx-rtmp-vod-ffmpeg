#!/usr/bin/env bash

nginx -g "daemon off;" &

ffmpeg -f video4linux2 -i /dev/video0 -c:v libx264 -an -tune zerolatency -f flv rtmp://127.0.0.1:1935/webcam/video0