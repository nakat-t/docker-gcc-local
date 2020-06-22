FROM ubuntu:16.04
LABEL maintainer="nakat-t <armaiti.wizard@gmail.com>" \
      description="My local gcc-4.9 image."

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        openssh-client \
        procps \
        build-essential \
        gcc-4.9 \
        g++-4.9 \
        gcc-4.9-multilib \
        g++-4.9-multilib \
        autoconf \
        automake \
        libtool \
        make \
        patch \
        file \
        git \
        subversion \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/gcc    gcc    /usr/bin/gcc-5      10 && \
    update-alternatives --install /usr/bin/gcc    gcc    /usr/bin/gcc-4.9    20 && \
    update-alternatives --install /usr/bin/g++    g++    /usr/bin/g++-5      10 && \
    update-alternatives --install /usr/bin/g++    g++    /usr/bin/g++-4.9    20 && \
    update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-5   10 && \
    update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-4.9 20

WORKDIR /data
