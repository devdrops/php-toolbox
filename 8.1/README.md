# PHP Version: 8.1

## Features

|TOOL|RELEASE|
|:---|:------|
|PHP|PHP 8.1.26 (cli) (built: Nov 27 2023 23:33:34) (NTS)|
|Composer|Composer version 2.6.6 2023-12-08 18:32:26|
|phpunit/phpunit|PHPUnit 10.5.2 by Sebastian Bergmann and contributors.|
|phpcsstandards/php_codesniffer|PHP_CodeSniffer version 3.8.0 (stable) by Squiz and PHPCSStandards|
|friendsofphp/php-cs-fixer|PHP CS Fixer 3.41.0 Long Night by Fabien Potencier and Dariusz Ruminski.|
|phpmd/phpmd|PHPMD 2.14.1|
|behat/behat|behat 3.13.0|
|phpstan/phpstan|PHPStan - PHP Static Analysis Tool 1.10.48|
|icanhazstring/composer-unused|0.8.11@4720206|
|vimeo/psalm|Psalm 5.17.0@c620f6e80d0abfca532b00bda366062aaedf6e5d|
|Rector|Rector 0.18.12|
|PHPArkitect|PHPArkitect version 0.3.25|
|Codeception|Codeception 5.0.12|
|Infection|Infection - PHP Mutation Testing Framework version 0.27.9|
|Deptrac|deptrac 1.0.2|
|PhpMetrics|PhpMetrics v2.8.2 <http://www.phpmetrics.org> by Jean-François Lépine <https://twitter.com/Halleck45>|

For **8.1-xdebug**:

|TOOL|RELEASE|
|:---|:------|
|Xdebug|Xdebug v3.3.0, Copyright (c) 2002-2023, by Derick Rethans|

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
