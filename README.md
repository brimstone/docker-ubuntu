## overview
build file for precise docker image.

## usage
```bash
build:~ $ sudo ./build
build:~ $ scp precise.tar.gz docker:
docker:~ $ sudo docker import - precise < precise.tar.gz
docker:~ $ sudo docker run -t -i precise /bin/bash
```

## better usage
Build precise.tar.gz with vagrant
```bash
build:~ $ vagrant up
```
Build the docker container with precise.tar.gz and the Dockerfile
```bash
docker:~ $ docker build -t ubuntu:12.04 Dockerfile
```
