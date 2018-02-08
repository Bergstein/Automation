#!/bin/sh

set -e
cd `dirname "$0"`
find /home/bergstein/ -type d -wholename "*etc/nginx/ssl/*.local" | while read LINE; do ./register-nginx-ssl.sh "$LINE" ; done
tree /etc/nginx/ssl