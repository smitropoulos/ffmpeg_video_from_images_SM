#!/bin/bash

echo **Make a video from a series of images.**
echo Where are the images?
read path
echo Please input the Framerate of the ouput video:
read framerate
echo What is the extension of the images?
read extension

cd $path
pwd
#ffmpeg -framerate 1 -pattern_type glob -i '*.jpg' -c:v libx264 -pix_fmt yuv420p out.mp4
ffmpeg -framerate $framerate -pattern_type glob -i '*.'$extension -c:v libx264 -pix_fmt yuv420p out.mp4
