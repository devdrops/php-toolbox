#!/bin/sh
#############################################
# Xdebug installer
#
# Used only if INSTALL_XDEBUG == true.
#############################################

pecl install -o -f xdebug-3.1.6
docker-php-ext-enable xdebug
rm -rf /tmp/pear
cp /config/xdebug/xdebug.ini "${PHP_INI_DIR}/conf.d/docker-php-ext-xdebug.ini"
