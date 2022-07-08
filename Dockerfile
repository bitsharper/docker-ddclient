FROM alpine:latest
LABEL maintainer="pasha.demichev@gmail.com"
ENV TZ=Pacific/Auckland

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk update && apk add --no-cache ddclient

COPY ddclient.conf /etc/ddclient/

CMD [ "/usr/bin/ddclient", "-foreground", "-verbose" ]
