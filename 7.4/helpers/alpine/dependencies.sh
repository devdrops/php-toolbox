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
    git=2.36.6-r0 \
    zip=3.0-r9 \
    libzip-dev=1.8.0-r1 \
    unzip=6.0-r9 \
    autoconf=2.71-r0 \
    gcc=11.2.1_git20220219-r2 \
    make=4.3-r0 \
    g++=11.2.1_git20220219-r2 \
    zlib-dev=1.2.12-r3 \
    gmp=6.2.1-r2 \
    gmp-dev=6.2.1-r2 \
    bzip2=1.0.8-r1 \
    bzip2-dev=1.0.8-r1 \
    curl=8.4.0-r0 \
    curl-dev=8.4.0-r0 \
    libxml2-dev=2.9.14-r2 \
    libffi=3.4.2-r1 \
    libffi-dev=3.4.2-r1 \
    libpng=1.6.37-r1 \
    libpng-dev=1.6.37-r1 \
    icu-dev=71.1-r2 \
    libintl=0.21-r2 \
    gettext=0.21-r2 \
    gettext-dev=0.21-r2 \
    ldb-dev=2.4.4-r0 \
    libldap=2.6.3-r3	 \
    openldap-dev=2.6.3-r3	 \
    freetds-dev=1.3.10-r0 \
    libpq-dev=14.10-r0 \
    sqlite-dev=3.40.1-r0 \
    openssl=1.1.1w-r1 \
  --repository=https://dl-cdn.alpinelinux.org/alpine/latest-stable/main

# Clean everything at the end
rm -rf /var/cache/apk/*
