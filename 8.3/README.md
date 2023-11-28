# PHP Version: 8.3

## Features

|TOOL|RELEASE|
|:---|:------|
|PHP|PHP 8.3.0 (cli) (built: Nov 27 2023 21:52:31) (NTS)|
|Composer|Composer version 2.6.5 2023-10-06 10:11:52|
|phpunit/phpunit|PHPUnit 10.4.2 by Sebastian Bergmann and contributors.|
|squizlabs/php_codesniffer|PHP_CodeSniffer version 3.7.2 (stable) by Squiz (http://www.squiz.net)|
|friendsofphp/php-cs-fixer|PHP CS Fixer 3.40.0 I ate three cookies 🍪 by Fabien Potencier and Dariusz Ruminski.|
|phpmd/phpmd|PHPMD 2.14.1|
|behat/behat|behat 3.13.0|
|phpstan/phpstan|PHPStan - PHP Static Analysis Tool 1.10.45|
|icanhazstring/composer-unused|0.8.7|
|vimeo/psalm|Psalm 5.16.0@2897ba636551a8cb61601cc26f6ccfbba6c36591|
|Rector|Rector 0.18.11|
|PHPArkitect|PHPArkitect version 0.3.25|
|Codeception|Codeception 5.0.12|
|Infection|Infection - PHP Mutation Testing Framework version 0.27.8|
|Deptrac|deptrac 1.0.2|
|PhpMetrics|PhpMetrics v2.8.2 <http://www.phpmetrics.org> by Jean-François Lépine <https://twitter.com/Halleck45>|

For **8.2-xdebug**:

|TOOL|RELEASE|
|:---|:------|
|Xdebug|Xdebug v3.2.2, Copyright (c) 2002-2023, by Derick Rethans|

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
