#!/bin/bash

docker build \
    -t gradio_demo:latest \
    -f Dockerfile .
