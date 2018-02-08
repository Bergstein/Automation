#!/bin/sh

set -e
cd `dirname "$0"`
find /home/bergstein/ -type f -name ".www" | while read LINE; do ./register-nginx-directory.sh "$LINE" ; done
tree /var/www