FROM ubuntu:18.04
LABEL maintainer="nakat-t <armaiti.wizard@gmail.com>" \
      description="My local gcc-8 image."

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        openssh-client \
        procps \
        build-essential \
        gcc-8 \
        g++-8 \
        gcc-8-multilib \
        g++-8-multilib \
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

RUN    update-alternatives --install /usr/bin/gcc    gcc    /usr/bin/gcc-7    10 \
    && update-alternatives --install /usr/bin/gcc    gcc    /usr/bin/gcc-8    20 \
    && update-alternatives --install /usr/bin/g++    g++    /usr/bin/g++-7    10 \
    && update-alternatives --install /usr/bin/g++    g++    /usr/bin/g++-8    20 \
    && update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-7 10 \
    && update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-8 20

WORKDIR /data
