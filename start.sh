#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
DOCKER_WORKDIR="/home/src"

xhost +local:
docker run --rm --gpus all -it -e DISPLAY=$DISPLAY \
  --volume=/tmp/.X11-unix:/tmp/.X11-unix \
  -p 7860:7860 \
  -v $SCRIPT_DIR/src/:$DOCKER_WORKDIR \
  --name=gradio_demo \
  gradio_demo:latest
