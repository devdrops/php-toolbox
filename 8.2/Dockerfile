FROM php:8.2-alpine

# Image information
ARG VCS_REF
ARG BUILD_DATE
ARG BUILD_VERSION
ARG INSTALL_XDEBUG=false

LABEL maintainer="Davi Marcondes Moreira <davi.marcondes.moreira@gmail.com>" \
      org.label-schema.name="DevDrops/PHP-Toolbox" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/devdrops/php-toolbox" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.version=$BUILD_VERSION

# Port usage for built-in server
EXPOSE 8000/tcp
EXPOSE 8080/tcp
EXPOSE 8081/tcp

# Alpine requirements
RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
        git zip unzip autoconf gcc make g++ zlib-dev gmp gmp-dev bzip2 bzip2-dev curl curl-dev libxml2 libxml2-dev \
        libffi libffi-dev libpng libpng-dev icu-dev libintl gettext gettext-dev ldb-dev libldap openldap-dev \
        freetds-dev linux-headers libpq-dev sqlite-dev libzip-dev zlib-dev && \
    ln -s /usr/include/libxml2/libxml /usr/include/ && \
    rm -rf /var/cache/apk/*

# PHP extensions
RUN docker-php-ext-install \
        bcmath bz2 calendar ctype curl dba exif ffi gd gettext gmp intl ldap mysqli opcache pcntl pdo_dblib pdo_mysql \
        pdo_pgsql pdo_sqlite pgsql shmop soap sockets sysvmsg sysvsem sysvshm zend_test zip

# PHP OPcache disable by default
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS="0"

# Composer and tools
RUN set -o pipefail && curl --silent https://getcomposer.org/installer | php && \
    mv ./composer.phar /usr/local/bin/composer
RUN composer global config \
        --no-plugins allow-plugins.pestphp/pest-plugin true && \
    composer global config \
        --no-plugins allow-plugins.infection/extension-installer true && \
    composer global require \
        phpunit/phpunit \
        squizlabs/php_codesniffer \
        friendsofphp/php-cs-fixer \
        phpmd/phpmd \
        behat/behat \
        phpstan/phpstan \
        icanhazstring/composer-unused \
        vimeo/psalm \
        pestphp/pest \
        rector/rector \
        phparkitect/phparkitect \
        codeception/codeception \
        infection/infection \
        qossmic/deptrac-shim \
        phpmetrics/phpmetrics
RUN ln -s -f /root/.composer/vendor/bin/* /usr/local/bin/

# xdebug (OPTIONAL)
COPY ./config-files/xdebug.ini /config/xdebug/xdebug.ini
COPY ./config-files/xdebug.log /config/xdebug/xdebug.log
COPY ./helpers/xdebug/install.sh /config/xdebug/install.sh
RUN if [ "$INSTALL_XDEBUG" = "true" ]; then sh /config/xdebug/install.sh ; fi

# Config and/or required files
COPY ./config-files/opcache.ini /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini
COPY ./config-files/error_reporting.ini /usr/local/etc/php/conf.d/error_reporting.ini
# Sample config files
COPY ./config-files/psalm.xml /config/psalm/
