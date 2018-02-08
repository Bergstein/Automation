#!/bin/sh

Basename=`basename "$1"`
echo "CNF: Configuration $1"
echo "CNF: Processing $Basename"
sudo ln -sf "$1" /etc/nginx/sites-enabled/$Basename
