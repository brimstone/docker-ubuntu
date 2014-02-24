## Overview
Build file for precise docker image with upstart support.

## Usage
```bash
build:~ $ sudo ./build
build:~ $ scp precise.tar.gz docker:
docker:~ $ sudo docker import - precise < precise.tar.gz
docker:~ $ sudo docker run -t -i precise /bin/bash
```

## Better Usage
Build precise.tar.gz with vagrant
```bash
build:~ $ vagrant up
```
Build the docker container with precise.tar.gz and the Dockerfile
```bash
docker:~ $ docker build -t ubuntu:12.04 Dockerfile
```

## Dockerfile
If you want to use upstart in your container, add the appropriate upstart job
file to /etc/init/ with ADD or something and don't change the CMD.

Otherwise, change the CMD or whatever.
