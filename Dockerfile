FROM alpine

RUN apk update && \
    apk add --no-cache nodejs npm && \
    cd /tmp && \
    wget https://github.com/duxlong/notepad.cc/archive/master.zip && \
    unzip master.zip && \
    cp -r notepad.cc-master /opt/notepad && \
    cd /opt/notepad && \
    npm install && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

WORKDIR /opt/notepad

CMD npm start
