#!/bin/sh

set -e

cd `dirname "$0"`
./register-all-nginx-directories.sh
./register-all-nginx-ssls.sh
./register-all-nginx-configs.sh
sudo service nginx reload
