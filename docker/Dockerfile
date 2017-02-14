FROM ubuntu:14.04
MAINTAINER Jesper Zedlitz <j.zedlitz@email.uni-kiel.de>

COPY *.sh /build/

RUN /build/install.sh && \
    cd / && /build/cleanup.sh && rm -rf /build
