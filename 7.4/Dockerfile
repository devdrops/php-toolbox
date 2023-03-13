FROM php:7.4-alpine

# Image information
ARG VCS_REF
ARG BUILD_DATE
ARG BUILD_VERSION

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
    apk --no-cache add \
        git zip unzip autoconf gcc make g++ zlib-dev gmp gmp-dev bzip2 bzip2-dev curl curl-dev libxml2-dev libffi \
        libffi-dev libpng libpng-dev icu-dev libintl gettext gettext-dev ldb-dev libldap openldap-dev freetds-dev \
        libpq-dev sqlite-dev && \
    rm -rf /var/cache/apk/*

# PHP extensions
RUN docker-php-ext-install \
    bcmath bz2 calendar ctype curl dba exif ffi gd gettext gmp intl ldap mysqli opcache pcntl pdo_dblib pdo_mysql \
    pdo_pgsql pdo_sqlite pgsql shmop soap sockets sysvmsg sysvsem sysvshm xmlrpc zend_test

# Composer and tools
RUN curl --silent https://getcomposer.org/installer | php && \
    mv ./composer.phar /usr/local/bin/composer
RUN composer global require \
        phpunit/phpunit \
        squizlabs/php_codesniffer \
        friendsofphp/php-cs-fixer \
        phpmd/phpmd \
        behat/behat \
        phploc/phploc \
        phpstan/phpstan \
        icanhazstring/composer-unused \
        vimeo/psalm
RUN ln -s -f /root/.composer/vendor/bin/* /usr/local/bin/

# xdebug
RUN pecl install -o -f xdebug-3.1.6 && \
    docker-php-ext-enable xdebug && \
    rm -rf /tmp/pear
COPY xdebug.ini $PHP_INIT_DIR/conf.d/