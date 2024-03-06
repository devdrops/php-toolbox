#!/bin/sh
#############################################
# Alpine dependencies
#
# References:
#   - https://pkgs.alpinelinux.org/packages?name=&branch=v3.18&repo=&arch=x86_64&maintainer=
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
    zlib \
    zlib-dev \
    gmp \
    gmp-dev \
    bzip2-dev \
    curl \
    curl-dev \
    libxml2 \
    libxml2-dev \
    libffi \
    libffi-dev \
    libpng \
    libpng-dev \
    icu \
    icu-dev \
    libintl \
    gettext \
    gettext-dev \
    ldb \
    ldb-dev \
    libldap \
    openldap \
    openldap-dev \
    freetds \
    freetds-dev \
    linux-headers \
    libpq \
    libpq-dev \
    sqlite \
    sqlite-dev \
    openssl \
    musl \
    musl-dev \
  --repository=https://dl-cdn.alpinelinux.org/alpine/latest-stable/main

# Link libxml
ln -s /usr/include/libxml2/libxml /usr/include/

# Clean everything at the end
rm -rf /var/cache/apk/*
