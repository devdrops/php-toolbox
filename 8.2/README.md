# PHP Version: 8.2

## Features

|TOOL|RELEASE|
|:---|:------|
|PHP|PHP 8.2.3 (cli) (built: Feb 14 2023 20:48:45) (NTS)|
|Composer|Composer version 2.5.4 2023-02-15 13:10:06|
|phpunit/phpunit|PHPUnit 10.0.16 by Sebastian Bergmann and contributors.|
|squizlabs/php_codesniffer|PHP_CodeSniffer version 3.7.2 (stable) by Squiz (http://www.squiz.net)|
|friendsofphp/php-cs-fixer|PHP CS Fixer 3.15.0 BoY42 by Fabien Potencier and Dariusz Ruminski.|
|phpmd/phpmd|PHPMD 2.13.0|
|behat/behat|behat 3.12.0|
|phploc/phploc|phploc 7.0.2 by Sebastian Bergmann.|
|phpstan/phpstan|PHPStan - PHP Static Analysis Tool 1.10.6|
|icanhazstring/composer-unused|0.5.6|
|vimeo/psalm|Psalm 5.8.0@9cf4f60a333f779ad3bc704a555920e81d4fdcda|
|Xdebug|Xdebug v3.2.0, Copyright (c) 2002-2022, by Derick Rethans|

## Important Notes For This Version

**Regarding OPCache**. I've added the necessary settings to enable the usage of OPCache, which can speed up the usage of
Psalm (along with PHP's new JIT resources). You can check these settings at [opcache.ini](./opcache.ini).

By default, the checking for timestamps is disabled. You have to enable it by passing an environment variable,
`PHP_OPCACHE_VALIDATE_TIMESTAMPS=1`, to Docker's running environment.

**Regarding Psalm**. Psalm requires a configuration XML file. You can use your own, create a new one (by running `psalm
--init`) or use a sample file I've added to the image. You can check it at [psalm.xml](./psalm.xml). IN the image, this
file is located at `/code/psalm/`.

To use this sample file, run any Psalm command as `psalm -c /config/psalm/psalm.xml`.
