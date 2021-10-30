FROM php:8-alpine

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

RUN curl --silent https://getcomposer.org/installer | php && \
    mv ./composer.phar /usr/local/bin/composer

RUN apk update && \
    apk upgrade && \
    apk --no-cache add \
        git zip unzip && \
    rm -rf /var/cache/apk/*

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
