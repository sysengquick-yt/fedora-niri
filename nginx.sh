#! /bin/bash

docker run --rm -d \
    -p ${NGINX_PORT:-4080}:80 \
    -v ${KICKSTART_DIR:-./kickstart/}:/usr/share/nginx/html/kickstart/:ro,z \
    nginx:latest
