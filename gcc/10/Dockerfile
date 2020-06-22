FROM ubuntu:20.04
LABEL maintainer="nakat-t <armaiti.wizard@gmail.com>" \
      description="My local gcc-10 image."

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        openssh-client \
        procps \
        build-essential \
        gcc-10 \
        g++-10 \
        gcc-10-multilib \
        g++-10-multilib \
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

RUN    update-alternatives --install /usr/bin/gcc    gcc    /usr/bin/gcc-9     10 \
    && update-alternatives --install /usr/bin/gcc    gcc    /usr/bin/gcc-10    20 \
    && update-alternatives --install /usr/bin/g++    g++    /usr/bin/g++-9     10 \
    && update-alternatives --install /usr/bin/g++    g++    /usr/bin/g++-10    20 \
    && update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-9  10 \
    && update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-10 20

WORKDIR /data
