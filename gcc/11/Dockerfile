FROM ubuntu:20.04 as base

ENV GCC_VERSION=11
ENV CMAKE_VERSION=3.19.1

COPY sha256.txt .

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        software-properties-common \
    && add-apt-repository -y ppa:ubuntu-toolchain-r/test \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        ca-certificates \
        openssh-client \
        procps \
        build-essential \
        gcc-${GCC_VERSION} \
        g++-${GCC_VERSION} \
        gcc-${GCC_VERSION}-multilib \
        g++-${GCC_VERSION}-multilib \
        autoconf \
        automake \
        libtool \
        make \
        patch \
        file \
        git \
        subversion \
        wget \
        libssl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && wget https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}.tar.gz \
    && sha256sum -c sha256.txt \
    && tar -xzf cmake-${CMAKE_VERSION}.tar.gz \
    && cd cmake-${CMAKE_VERSION} \
    && ./bootstrap \
    && make \
    && make install \
    && cd .. \
    && rm -f cmake-${CMAKE_VERSION}.tar.gz \
    && rm -rf cmake-${CMAKE_VERSION}

RUN    update-alternatives --install /usr/bin/gcc    gcc    /usr/bin/gcc-9                 10 \
    && update-alternatives --install /usr/bin/gcc    gcc    /usr/bin/gcc-${GCC_VERSION}    20 \
    && update-alternatives --install /usr/bin/g++    g++    /usr/bin/g++-9                 10 \
    && update-alternatives --install /usr/bin/g++    g++    /usr/bin/g++-${GCC_VERSION}    20 \
    && update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-9              10 \
    && update-alternatives --install /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-${GCC_VERSION} 20 \
    && update-alternatives --remove-all cc  \
    && update-alternatives --remove-all c++ \
    && update-alternatives --install /usr/bin/cc     cc     /usr/bin/gcc 10 \
    && update-alternatives --install /usr/bin/c++    c++    /usr/bin/g++ 10

WORKDIR /data

FROM base as test
COPY run_tests.sh /
RUN chmod +x /run_tests.sh

FROM base as release
LABEL maintainer="nakat-t <armaiti.wizard@gmail.com>" \
      description="My local gcc-${GCC_VERSION} image."
