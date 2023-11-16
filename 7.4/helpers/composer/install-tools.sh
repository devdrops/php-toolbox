#!/bin/sh
#############################################
# Composer tools
#############################################

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
        phpspec/phpspec \
        codeception/codeception \
        infection/infection \
        qossmic/deptrac-shim \
        phpmetrics/phpmetrics

ln -s -f /root/.composer/vendor/bin/* /usr/local/bin/
