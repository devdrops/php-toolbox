# PHP Version: 8.1

## Features

|TOOL|RELEASE|
|:---|:------|
|PHP|PHP 8.1.21 (cli) (built: Jul 10 2023 23:10:58) (NTS)|
|Composer|Composer version 2.5.8 2023-06-09 17:13:21|
|phpunit/phpunit|PHPUnit 10.2.6 by Sebastian Bergmann and contributors.|
|squizlabs/php_codesniffer|PHP_CodeSniffer version 3.7.2 (stable) by Squiz (http://www.squiz.net)|
|friendsofphp/php-cs-fixer|PHP CS Fixer 3.22.0 Chips & Pizza by Fabien Potencier and Dariusz Ruminski.|
|phpmd/phpmd|PHPMD 2.13.0|
|behat/behat|behat 3.13.0|
|phpstan/phpstan|PHPStan - PHP Static Analysis Tool 1.10.25|
|icanhazstring/composer-unused|0.8.7|
|vimeo/psalm|Psalm 5.13.1@086b94371304750d1c673315321a55d15fc59015|
|Xdebug|Xdebug v3.2.0, Copyright (c) 2002-2022, by Derick Rethans|

## Important Notes For This Version

**Regarding PHPLOC**. Since January 2023, Sebastian Bergmann decided to archive the repository. So, I won't keep it to
avoid breaking changes as new fixes on PHP may cause problems that will not be fixed.

**Regarding OPCache**. I've added the necessary settings to enable the usage of OPCache, which can speed up the usage of
Psalm (along with PHP's new JIT resources). You can check these settings at [opcache.ini](./opcache.ini).

By default, the checking for timestamps is disabled. You have to enable it by passing an environment variable,
`PHP_OPCACHE_VALIDATE_TIMESTAMPS=1`, to Docker's running environment.

**Regarding Psalm**. Psalm requires a configuration XML file. You can use your own, create a new one (by running `psalm
--init`) or use a sample file I've added to the image. You can check it at [psalm.xml](./psalm.xml). IN the image, this
file is located at `/code/psalm/`.

To use this sample file, run any Psalm command as `psalm -c /config/psalm/psalm.xml`.
