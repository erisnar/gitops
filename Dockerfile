FROM alpine:3.13.6

LABEL maintainer Erik Snartland <es@eriksnartland.no>

RUN echo http://dl-cdn.alpinelinux.org/alpine/v3.13/main > /etc/apk/repositories; \
    echo http://dl-cdn.alpinelinux.org/alpine/v3.13/community >> /etc/apk/repositories

RUN apk update && apk add --no-cache jq httpie

ENTRYPOINT [ "http" ]
CMD [ "--help" ]