FROM hypriot/rpi-alpine-scratch:edge
MAINTAINER feelingfree-me <feelingfree.co.nr@gmail.com>

RUN apk --update add nodejs-lts && \
    npm install -g bower && \
    npm cache clean && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /app
WORKDIR /app