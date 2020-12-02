FROM alpine

COPY . /opt/notepad/

COPY docker/entrypoint.sh /

RUN apk update && \
    apk add --no-cache nodejs npm util-linux && \
    chmod +x /entrypoint.sh && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

EXPOSE 3333

VOLUME /opt/notepad/data

WORKDIR /opt/notepad

CMD /entrypoint.sh
