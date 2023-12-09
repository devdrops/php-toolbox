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
    git=2.40.1-r0 \
    zip=3.0-r12 \
    libzip=1.9.2-r2 \
    libzip-dev=1.9.2-r2 \
    unzip=6.0-r14 \
    autoconf=2.71-r2 \
    gcc=12.2.1_git20220924-r10 \
    make=4.4.1-r1 \
    g++=12.2.1_git20220924-r10 \
    zlib=1.2.13-r1 \
    zlib-dev=1.2.13-r1 \
    gmp=6.2.1-r3 \
    gmp-dev=6.2.1-r3 \
    bzip2=1.0.8-r5 \
    bzip2-dev=1.0.8-r5 \
    curl=8.5.0-r0 \
    curl-dev=8.5.0-r0 \
    libxml2=2.11.6-r0 \
    libxml2-dev=2.11.6-r0 \
    libffi=3.4.4-r2 \
    libffi-dev=3.4.4-r2 \
    libpng=1.6.39-r3 \
    libpng-dev=1.6.39-r3 \
    icu=73.2-r2 \
    icu-dev=73.2-r2 \
    libintl=0.21.1-r7 \
    gettext=0.21.1-r7 \
    gettext-dev=0.21.1-r7 \
    ldb=2.7.2-r1 \
    ldb-dev=2.7.2-r1 \
    libldap=2.6.5-r0 \
    openldap=2.6.5-r0 \
    openldap-dev=2.6.5-r0 \
    freetds=1.3.18-r1 \
    freetds-dev=1.3.18-r1 \
    linux-headers=6.3-r0 \
    libpq=15.5-r0 \
    libpq-dev=15.5-r0 \
    sqlite=3.41.2-r2 \
    sqlite-dev=3.41.2-r2 \
    openssl=3.1.4-r1 \
    musl=1.2.4-r2 \
    musl-dev=1.2.4-r2 \
  --repository=https://dl-cdn.alpinelinux.org/alpine/latest-stable/main

# Link libxml
ln -s /usr/include/libxml2/libxml /usr/include/

# Clean everything at the end
rm -rf /var/cache/apk/*
