#!/bin/sh
#############################################
# Alpine dependencies
#############################################

# Update apk before next steps
apk update
apk upgrade

## Required dependencies
apk add --no-cache \
    git \
    zip libzip-dev unzip \
    autoconf \
    gcc \
    make \
    g++ \
    zlib-dev \
    gmp gmp-dev \
    bzip2 bzip2-dev \
    curl curl-dev \
    libxml2 libxml2-dev \
    libffi libffi-dev \
    libpng libpng-dev \
    icu-dev \
    libintl \
    gettext gettext-dev \
    ldb-dev \
    libldap \
    openldap-dev \
    freetds-dev \
    linux-headers \
    libpq-dev \
    sqlite-dev \
  --repository=https://dl-cdn.alpinelinux.org/alpine/latest-stable/main

# Link libxml
ln -s /usr/include/libxml2/libxml /usr/include/

# Clean everything at the end
rm -rf /var/cache/apk/*
