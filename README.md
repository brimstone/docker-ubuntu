## Overview
Build file for trusty docker image with upstart support.

## Usage
Build trusty.tar.gz with vagrant
```bash
build:~ $ vagrant up
```
Build the docker container with trusty.tar.gz and the Dockerfile
```bash
docker:~ $ docker build -t ubuntu:14.04 Dockerfile
```

## Dockerfile
If you want to use upstart in your container, add the appropriate upstart job
file to /etc/init/ with ADD or something and don't change the CMD.

Otherwise, change the CMD or whatever.
