FROM php:7.0-cli

MAINTAINER Davi Marcondes Moreira <davi.marcondes.moreira@gmail.com>

RUN locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update > /dev/null 2>&1
RUN apt-get -y install \
    vim \
    curl \
    build-essential \
    software-properties-common \
    python-software-properties \
    git > /dev/null 2>&1
RUN add-apt-repository ppa:ondrej/php5-5.6
RUN apt-get update > /dev/null 2>&1

RUN apt-get -y install \
    php5 \
    php5-curl \
    php5-gd \
    php5-mcrypt \
    libapache2-mod-php5 \
    php-apc

RUN curl --silent https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer > /dev/null 2>&1

RUN composer global require 'phpunit/phpunit' && \
    sudo ln -fs /root/.composer/vendor/bin/phpunit /usr/local/bin/phpunit > /dev/null 2>&1

CMD [ "php" ]

