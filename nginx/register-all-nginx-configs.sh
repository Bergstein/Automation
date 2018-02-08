#!/bin/sh

set -e
cd `dirname "$0"`
find /home/bergstein/ -type f -name "*-development.conf" | while read LINE; do ./register-nginx-config.sh "$LINE" ; done
sudo service nginx reload
tree /etc/nginx/sites-enabled