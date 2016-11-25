FROM drzef/s6base

MAINTAINER Dr Zef <drzef85@gmail.com>

COPY rootfs /
RUN apk add --no-cache dnsmasq

ENTRYPOINT ["/init"]
VOLUME /config
EXPOSE 53 53/udp 67/udp
