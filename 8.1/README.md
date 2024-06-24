# PHP Version: 8.1

## Features

|TOOL|RELEASE|
|:---|:------|
|PHP|PHP 8.1.29 (cli) (built: Jun 21 2024 01:55:21) (NTS)|
|Composer|Composer version 2.7.7 2024-06-10 22:11:12|
|phpunit/phpunit|PHPUnit 10.5.17 by Sebastian Bergmann and contributors.|
|phpcsstandards/php_codesniffer|PHP_CodeSniffer version 3.10.1 (stable) by Squiz and PHPCSStandards|
|friendsofphp/php-cs-fixer|PHP CS Fixer 3.59.3 7th Gear by Fabien Potencier, Dariusz Ruminski and contributors.|
|phpmd/phpmd|PHPMD 2.15.0|
|behat/behat|behat 3.13.0|
|phpstan/phpstan|PHPStan - PHP Static Analysis Tool 1.11.5|
|vimeo/psalm|Psalm 5.25.0@01a8eb06b9e9cc6cfb6a320bf9fb14331919d505|
|icanhazstring/composer-unused|0.8.11@4720206|
|Rector|Rector 1.1.1|
|PHPArkitect|PHPArkitect version 0.3.33|
|Codeception|Codeception 5.1.2|
|Infection|Infection - PHP Mutation Testing Framework version 0.27.11|
|Deptrac|deptrac 1.0.2|
|PhpMetrics|PhpMetrics v2.8.2 <http://www.phpmetrics.org> by Jean-François Lépine <https://twitter.com/Halleck45>|
|PDepend|PDepend 2.16.2|

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
