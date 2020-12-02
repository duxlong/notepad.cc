FROM alpine

COPY . /opt/notepad/

COPY docker/entrypoint.sh /

RUN apk update && \
    apk add --no-cache nodejs npm && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

EXPOSE 1234

VOLUME /opt/notepad/data

WORKDIR /opt/notepad

CMD /entrypoint.sh
