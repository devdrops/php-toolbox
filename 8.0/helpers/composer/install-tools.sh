#!/bin/sh
#############################################
# Composer tools
#############################################

composer global require --optimize-autoloader --prefer-stable \
        phpunit/phpunit \
        phpcsstandards/php_codesniffer \
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
        phpmetrics/phpmetrics \
        pdepend/pdepend

ln -s -f /root/.composer/vendor/bin/* /usr/local/bin/
