FROM ubuntu:18.04 as base

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        openssh-client \
        procps \
        build-essential \
        gcc-6 \
        g++-6 \
        gcc-6-multilib \
        g++-6-multilib \
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
    && update-alternatives --install /usr/bin/gcc    gcc    /usr/bin/gcc-6    20 \
    && update-alternatives --install /usr/bin/g++    g++    /usr/bin/g++-7    10 \
    && update-alternatives --install /usr/bin/g++    g++    /usr/bin/g++-6    20 \
    && update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-7 10 \
    && update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-6 20

WORKDIR /data

FROM base as test
COPY run_tests.sh /
RUN chmod +x /run_tests.sh

FROM base as release
LABEL maintainer="nakat-t <armaiti.wizard@gmail.com>" \
      description="My local gcc-6 image."
