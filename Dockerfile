FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y subversion build-essential libncurses5-dev zlib1g-dev gawk flex quilt git-core unzip libssl-dev \
        file wget python

ARG USER_ID=1000
ARG GROUP_ID=1000

RUN groupadd -g $GROUP_ID omega && \
    useradd -u $USER_ID -g $GROUP_ID -s /bin/bash -d /workspace/ omega

USER omega

VOLUME '/workspace/'

WORKDIR '/workspace/'


