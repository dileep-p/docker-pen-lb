FROM debian:jessie
MAINTAINER Dileep P <mail@dileep.me>

ENV PEN_VERSION="0.31.1"

RUN apt-get update && \
    apt-get -qq install -y wget gcc build-essential && \
    wget -q "http://siag.nu/pub/pen/pen-$PEN_VERSION.tar.gz" -P /tmp && \
    tar xfz "/tmp/pen-$PEN_VERSION.tar.gz" -C / && \
    cd "/pen-$PEN_VERSION" && \
    ./configure && \
    make && \
    make install && \
    apt-get -qq autoremove --purge -y && \
    apt-get -qq clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY pen.sh /bin/pen.sh
CMD /bin/bash /bin/pen.sh

