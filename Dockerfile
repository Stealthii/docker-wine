FROM alpine:edge

MAINTAINER Dan Porter "dpreid@gmail.com"

RUN \
    addgroup -S wine \
    && adduser -D -S -h /var/cache/wine -s /sbin/nologin -G wine wine \
    && apk add --no-cache --virtual .wine-rundeps \
        wine

CMD ["wine"]
