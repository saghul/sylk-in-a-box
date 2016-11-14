#!/bin/bash

set -e
source /files/scripts/helpers
set -x


# SylkServer
cp -r /files/services/sylkserver /etc/service/
cp /files/config/sylkserver/config.ini /etc/sylkserver/

# Janus
cp -r /files/services/janus /etc/service/

# Sylk
cp -r /files/services/sylk /etc/service/
