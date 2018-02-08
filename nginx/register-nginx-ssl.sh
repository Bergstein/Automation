#!/bin/sh

Basename=`basename "$1"`
echo "SSL Directory: $1"
echo "SSL Processing: $Basename"

if [ ! -d "/etc/nginx/ssl/$Basename" ]; then
  sudo ln -sf "$1" /etc/nginx/ssl/$Basename
fi