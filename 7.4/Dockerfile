FROM php:7.4-alpine

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
COPY ./config-files/error_reporting.ini /usr/local/etc/php/conf.d/error_reporting.ini
# Configuration files
COPY ./config-files/ /config/

SHELL ["/bin/ash", "-eo", "pipefail", "-c"]

# Installation:
# - Alpine requirements
# - PHP extensions
# - Composer
# - Composer configuration
# - Composer tools
# - Redis
# - Xdebug (optional)
RUN <<EOF
sh /config/alpine/dependencies.sh
sh /config/php/extensions.sh
sh /config/composer/install.sh
sh /config/composer/config.sh
sh /config/composer/install-tools.sh
sh /config/redis/install.sh
if [ "$INSTALL_XDEBUG" = "true" ]; then sh /config/xdebug/install.sh ; fi
EOF
