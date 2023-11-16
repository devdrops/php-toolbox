#!/bin/sh
#############################################
# Alpine dependencies
#############################################

docker-php-ext-install \
    bcmath \
    bz2 \
    calendar \
    ctype \
    curl \
    dba \
    exif \
    ffi \
    gd \
    gettext \
    gmp \
    intl \
    ldap \
    mysqli \
    opcache \
    pcntl \
    pdo_dblib \
    pdo_mysql \
    pdo_pgsql \
    pdo_sqlite \
    pgsql \
    shmop \
    soap \
    sockets \
    sysvmsg \
    sysvsem \
    sysvshm \
    xmlrpc \
    zend_test \
    zip
