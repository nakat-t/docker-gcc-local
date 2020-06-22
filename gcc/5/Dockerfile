FROM ubuntu:16.04
LABEL maintainer="nakat-t <armaiti.wizard@gmail.com>" \
      description="My local gcc-5 image."

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        openssh-client \
        procps \
        build-essential \
        gcc \
        g++ \
        gcc-multilib \
        g++-multilib \
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

WORKDIR /data
