FROM brimstone/ubuntu:14.04

RUN apt-get update \
 && apt-get install -y multistrap

RUN sed -i '989 s/$forceyes //' /usr/sbin/multistrap

COPY root /tmp/root

COPY trusty.cfg /tmp/

COPY build /tmp/

WORKDIR /tmp

RUN ./build
