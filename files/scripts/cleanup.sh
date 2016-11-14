#!/bin/bash

set -e
source /files/scripts/helpers
set -x


rm -rf /files
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
