FROM alpine:latest
LABEL maintainer="pasha.demichev@gmail.com"
ARG DD_USERNAME
ARG DD_PASSWORD
ENV TZ=Pacific/Auckland

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories  && \
    apk update && apk add --no-cache ddclient

COPY ddclient.conf /etc/ddclient/
RUN sed -i -e "s/login=/login=${DD_USERNAME}/gi" -e "s/password=/password='${DD_PASSWORD}'/gi" -e "s/domain_name/'${DD_DOMAIN}'/gi /etc/ddclient/ddclient.conf
CMD [ "/usr/bin/ddclient", "-foreground", "-verbose" ]
