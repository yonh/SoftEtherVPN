FROM ubuntu:14.04

MAINTAINER yonh<azssjli@163.com>

COPY copyables /
RUN chmod +x /entrypoint.sh /gencert.sh

RUN bash /build.sh \
    && rm /build.sh

WORKDIR /opt

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 500/udp 4500/udp 1701/tcp 1194/udp

CMD ["/usr/local/sbin/run"]
