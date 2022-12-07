FROM nvcr.io/nvidia/cuda:11.0.3-cudnn8-devel-ubuntu20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update ; exit 0
RUN apt install wget libpsl5 publicsuffix
RUN apt-key del 7fa2af80
RUN wget -qO - https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/3bf863cc.pub | apt-key add -
RUN apt-get update && apt-get install -y  \
    python3 python3-setuptools python3-pip python3-dev python3-tk
RUN ln -svf /usr/bin/python3 /usr/bin/python
RUN python -m pip install --upgrade --force pip

WORKDIR /home/src
RUN pip3 install  gradio==3.0.13
