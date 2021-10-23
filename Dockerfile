FROM alpine:3.13.6

LABEL maintainer Erik Snartland <es@eriksnartland.no>

RUN apk update && apk add --no-cache jq httpie

ENTRYPOINT [ "http" ]
CMD [ "--help" ]