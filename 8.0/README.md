# PHP Version: 8.0

## Features

|TOOL|RELEASE|
|:---|:------|
|PHP|PHP 8.0.30 (cli) (built: Oct 21 2023 06:13:34) ( NTS )|
|Composer|Composer version 2.7.2 2024-03-11 17:12:18|
|phpunit/phpunit|PHPUnit 9.6.19 by Sebastian Bergmann and contributors.|
|phpcsstandards/php_codesniffer|PHP_CodeSniffer version 3.9.1 (stable) by Squiz and PHPCSStandards|
|friendsofphp/php-cs-fixer|PHP CS Fixer 3.52.1 15 Keys by Fabien Potencier, Dariusz Ruminski and contributors.|
|phpmd/phpmd|PHPMD 2.15.0|
|behat/behat|behat 3.13.0|
|phpstan/phpstan|PHPStan - PHP Static Analysis Tool 1.10.66|
|vimeo/psalm|Psalm 5.22.2@d768d914152dbbf3486c36398802f74e80cfde48|
|icanhazstring/composer-unused|0.8.11@4720206|
|Rector|Rector 1.0.4|
|PHPArkitect|PHPArkitect version 0.3.29|
|Codeception|Codeception 5.1.2|
|Infection|Infection - PHP Mutation Testing Framework version 0.26.19|
|Deptrac|deptrac 0.24.0|
|PhpMetrics|PhpMetrics v2.8.2 <http://www.phpmetrics.org> by Jean-François Lépine <https://twitter.com/Halleck45>|
|PDepend|PDepend 2.16.2|

For **8.0-xdebug**:

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
