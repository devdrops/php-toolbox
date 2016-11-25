FROM php:7.0-cli

MAINTAINER Davi Marcondes Moreira <davi.marcondes.moreira@gmail.com>

ARG VCS_REF
ARG BUILD_DATE

LABEL org.label-schema.name="Docker/PHP-Toolbox" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/devdrops/php-toolbox" \
      org.label-schema.schema-version="1.0"

RUN curl --silent https://getcomposer.org/installer | php > /dev/null 2>&1 && \
    mv ./composer.phar /usr/local/bin/composer > /dev/null 2>&1

RUN apt-get update > /dev/null 2>&1
RUN apt-get -y install \
    vim \
    curl \
    git \
    zip \
    unzip > /dev/null 2>&1

RUN composer global require \
    phpunit/phpunit \
    squizlabs/php_codesniffer \
    friendsofphp/php-cs-fixer \
    phpmd/phpmd \
    behat/behat > /dev/null 2>&1

RUN ln -s /root/.composer/vendor/bin/* /usr/local/bin/ > /dev/null 2>&1

RUN rm -rf /var/lib/apt/lists/*
