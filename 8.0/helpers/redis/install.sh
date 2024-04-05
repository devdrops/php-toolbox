#!/bin/bash
#############################################
# Redis extension installer
#############################################

pecl install -o -f redis
docker-php-ext-enable redis
rm -rf /tmp/pear
