#!/bin/sh
docker rm -f verdaccio
docker run -d --name=verdaccio \
  -v /c/Users:/home/dev \
  -p 4873:4873 \
  --restart=unless-stopped \
  verdaccio
