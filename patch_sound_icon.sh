#!/bin/bash 

export CURDIR=$(pwd)
cd ./usr/share/icons/Ambiant-MATE/status/24/


FILE=$1     
if [ ! -f audio-volume-high.svg.bak ]; then
  mv  audio-volume-high.svg  audio-volume-high.svg.bak
  mv  audio-volume-low.svg  audio-volume-low.svg.bak
  mv  audio-volume-medium.svg  audio-volume-medium.svg.bak
  mv  audio-volume-muted.svg  audio-volume-muted.svg.bak
fi

if [ ! -f audio-volume-high.svg ]; then
  ln -s  audio-volume-high-panel.svg audio-volume-high.svg
  ln -s  audio-volume-low-panel.svg audio-volume-low.svg
  ln -s  audio-volume-medium-panel.svg audio-volume-medium.svg
  ln -s  audio-volume-muted-panel.svg audio-volume-muted.svg
fi

cd $CURDIR
