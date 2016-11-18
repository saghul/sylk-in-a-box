#!/bin/bash

set -e
source /files/scripts/helpers
set -x


# SylkServer
cp -r /files/services/sylkserver /etc/service/
cp /files/config/sylkserver/config.ini /etc/sylkserver/

# Janus
cp -r /files/services/janus /etc/service/

# Nginx
cp /files/config/nginx/nginx.conf /etc/nginx/
cp -r /files/services/nginx /etc/service/

