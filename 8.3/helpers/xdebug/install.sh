#!/bin/sh
#############################################
# Xdebug installer
#
# Used only if INSTALL_XDEBUG == true.
#############################################

pecl install -o -f xdebug-3.3.0
docker-php-ext-enable xdebug
rm -rf /tmp/pear
cp /config/xdebug/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
