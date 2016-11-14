FROM phusion/baseimage:latest
MAINTAINER saghul <saghul@gmail.com>

ADD files /files

RUN /files/scripts/prepare.sh && \
    /files/scripts/install.sh && \
    /files/scripts/config.sh && \
    /files/scripts/cleanup.sh

EXPOSE 3000
EXPOSE 10888

CMD ["/sbin/my_init"]

