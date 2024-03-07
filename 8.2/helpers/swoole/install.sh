#!/bin/sh
#############################################
# Swoole installer
#############################################

pecl install -o -f swoole
docker-php-ext-enable swoole
rm -rf /tmp/pear

