#!/bin/sh

Dirname=`dirname "$1"`
Basename=`basename "$Dirname"`
echo "DIR: Directory $1"
echo "DIR: Processing $Basename"
if [ ! -d "/var/www/$Basename" ]; then
  sudo ln -sf "$Dirname/src" /var/www/$Basename
fi