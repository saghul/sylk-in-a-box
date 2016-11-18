FROM phusion/baseimage:latest
MAINTAINER Saúl Ibarra Corretgé <saghul@gmail.com>

ADD files /files

RUN /files/scripts/prepare.sh && \
    /files/scripts/install.sh && \
    /files/scripts/config.sh && \
    /files/scripts/cleanup.sh

EXPOSE 443

CMD ["/sbin/my_init"]

