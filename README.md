## Overview
Build file for trusty or vivid docker image with upstart support.

## Usage
Build `brimstone/ubuntu:14.04` with docker:
```bash
make trusty
```

Build `brimstone/ubuntu:15.04` with docker:
```bash
make vivid
```

## Dockerfile
If you want to use upstart in your container, add the appropriate upstart job
file to /etc/init/ with ADD or something and don't change the CMD.

Otherwise, change the CMD or whatever.
