#!/bin/sh
#############################################
# Alpine dependencies
#
# References:
#   - https://pkgs.alpinelinux.org/packages?name=&branch=v3.16&repo=&arch=x86_64&maintainer=
#############################################

# Update apk before next steps
apk update
apk upgrade

## Required dependencies
apk add --no-cache \
    git \
    zip \
    libzip \
    libzip-dev \
    unzip \
    autoconf \
    gcc \
    make \
    g++ \
    zlib-dev \
    gmp \
    gmp-dev \
    bzip2 \
    bzip2-dev \
    curl \
    curl-dev \
    libxml2-dev \
    libffi \
    libffi-dev \
    libpng \
    libpng-dev \
    icu-dev \
    libintl \
    gettext \
    gettext-dev \
    ldb-dev \
    libldap \
    openldap-dev \
    freetds-dev \
    libpq-dev \
    sqlite-dev \
    openssl \
  --repository=https://dl-cdn.alpinelinux.org/alpine/latest-stable/main

# Link libxml
ln -s /usr/include/libxml2/libxml /usr/include/

# Clean everything at the end
rm -rf /var/cache/apk/*
