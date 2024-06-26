FROM php:8.3-alpine

# Image information
ARG VCS_REF
ARG BUILD_DATE
ARG BUILD_VERSION
ARG VERSION
ARG INSTALL_XDEBUG=false
LABEL maintainer="Davi Marcondes Moreira <davi.marcondes.moreira@gmail.com>" \
      org.label-schema.name="DevDrops/PHP-Toolbox" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/devdrops/php-toolbox" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.build-version=$BUILD_VERSION \
      org.label-schema.project-version=$VERSION

# Ports exposed for built-in server
EXPOSE 8000/tcp
EXPOSE 8080/tcp
EXPOSE 8081/tcp

# Helper files
COPY ./helpers/ /config/
# Config and/or required files for PHP
COPY ./config-files/opcache/opcache.ini "${PHP_INI_DIR}/conf.d/docker-php-ext-opcache.ini"
COPY ./config-files/php/php.ini "${PHP_INI_DIR}/conf.d/app.ini"
# Configuration files
COPY ./config-files/ /config/

# PHP OPcache disable by default
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS="0"

SHELL ["/bin/ash", "-eo", "pipefail", "-c"]

# Installation:
# - Alpine requirements
# - PHP extensions
# - Composer
# - Composer configuration
# - Composer tools
# - Swoole
# - Redis
# - Xdebug (optional)
RUN <<EOF
sh /config/alpine/dependencies.sh
sh /config/php/extensions.sh
sh /config/composer/install.sh
sh /config/composer/config.sh
sh /config/composer/install-tools.sh
sh /config/swoole/install.sh
sh /config/redis/install.sh
if [ "$INSTALL_XDEBUG" = "true" ]; then sh /config/xdebug/install.sh ; fi
EOF
