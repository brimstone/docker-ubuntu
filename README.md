## overview
build file for precise docker image.

## usage
```bash
build:~ $ sudo ./build
build:~ $ scp precise.tar.gz docker:
docker:~ $ sudo docker import - precise < precise.tar.gz
docker:~ $ sudo docker run -t -i precise /bin/bash
```
