FROM php:8.1-alpine

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

# Alpine requirements
COPY ./helpers/alpine/dependencies.sh /config/alpine/dependencies.sh
RUN sh /config/alpine/dependencies.sh

# PHP extensions
COPY ./helpers/php/extensions.sh /config/php/extensions.sh
RUN sh /config/php/extensions.sh
# PHP OPcache disable by default
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS="0"
# Config and/or required files for PHP
COPY ./config-files/opcache.ini /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini
COPY ./config-files/error_reporting.ini /usr/local/etc/php/conf.d/error_reporting.ini

# Composer
COPY ./helpers/composer/install.sh /config/composer/install.sh
SHELL ["/bin/ash", "-eo", "pipefail", "-c"]
RUN sh /config/composer/install.sh
# Composer configuration
COPY ./helpers/composer/config.sh /config/composer/config.sh
RUN sh /config/composer/config.sh
# Composer tools
COPY ./helpers/composer/install-tools.sh /config/composer/install-tools.sh
RUN sh /config/composer/install-tools.sh
# Sample config files
COPY ./config-files/psalm.xml /config/psalm/psalm.xml

# Xdebug (optional)
COPY ./config-files/xdebug.ini /config/xdebug/xdebug.ini
COPY ./config-files/xdebug.log /config/xdebug/xdebug.log
COPY ./helpers/xdebug/install.sh /config/xdebug/install.sh
RUN if [ "$INSTALL_XDEBUG" = "true" ]; then sh /config/xdebug/install.sh ; fi

# Swoole
COPY ./helpers/swoole/install.sh /config/swoole/install.sh
RUN sh /config/swoole/install.sh
