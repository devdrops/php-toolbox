# PHP Version: 8.1

## Features

|TOOL|RELEASE|
|:---|:------|
|PHP|PHP 8.1.23 (cli) (built: Sep  2 2023 07:56:24) (NTS)|
|Composer|Composer version 2.6.2 2023-09-03 14:09:15|
|phpunit/phpunit|PHPUnit 10.3.2 by Sebastian Bergmann and contributors.|
|squizlabs/php_codesniffer|PHP_CodeSniffer version 3.7.2 (stable) by Squiz (http://www.squiz.net)|
|friendsofphp/php-cs-fixer|PHP CS Fixer 3.25.1 Crank Cake by Fabien Potencier and Dariusz Ruminski.|
|phpmd/phpmd|PHPMD 2.13.0|
|behat/behat|behat 3.13.0|
|phpstan/phpstan|PHPStan - PHP Static Analysis Tool 1.10.33|
|icanhazstring/composer-unused|0.8.7|
|vimeo/psalm|Psalm 5.15.0@5c774aca4746caf3d239d9c8cadb9f882ca29352|
|Xdebug|Xdebug v3.2.2, Copyright (c) 2002-2023, by Derick Rethans|
|Rector|Rector 0.18.2|
|PHPArkitect|PHPArkitect version 0.3.25|
|Codeception|Codeception 5.0.11|
|Infection|Infection - PHP Mutation Testing Framework version 0.27.0|
|Deptrac|deptrac 1.0.2|
|PhpMetrics|PhpMetrics v2.8.2 <http://www.phpmetrics.org> by Jean-François Lépine <https://twitter.com/Halleck45>|

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
