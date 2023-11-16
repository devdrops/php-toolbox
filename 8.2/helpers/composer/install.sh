#!/bin/ash
# shellcheck shell=ash
#############################################
# Composer installation
#############################################

curl --silent https://getcomposer.org/installer | php && \
    mv ./composer.phar /usr/local/bin/composer
