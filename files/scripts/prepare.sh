#!/bin/bash

set -e
source /files/scripts/helpers
set -x


cp /files/apt/ag-projects.list /etc/apt/sources.list.d/
apt-key add /files/apt/agp-debian-gpg.key
apt-get update
apt-get dist-upgrade -y
