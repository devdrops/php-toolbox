# PHP Version: 7.4

## Features

|TOOL|RELEASE|
|:---|:------|
|PHP|PHP 7.4.33 (cli) (built: Nov 12 2022 09:17:36) ( NTS )|
|Composer|Composer version 2.5.8 2023-06-09 17:13:21|
|phpunit/phpunit|PHPUnit 9.6.11 by Sebastian Bergmann and contributors.|
|squizlabs/php_codesniffer|PHP_CodeSniffer version 3.7.2 (stable) by Squiz (http://www.squiz.net)|
|friendsofphp/php-cs-fixer|PHP CS Fixer 3.23.0 First Steps by Fabien Potencier and Dariusz Ruminski.|
|phpmd/phpmd|PHPMD 2.13.0|
|behat/behat|behat 3.13.0|
|phpstan/phpstan|PHPStan - PHP Static Analysis Tool 1.10.30|
|icanhazstring/composer-unused|0.8.7|
|vimeo/psalm|Psalm 5.15.0@5c774aca4746caf3d239d9c8cadb9f882ca29352|
|Xdebug|Xdebug v3.1.6, Copyright (c) 2002-2022, by Derick Rethans|
|Rector|Rector 0.18.0|
|PHPArkitect|PHPArkitect version 0.3.25|
|phpspec|phpspec 7.4.0|
|Codeception|Codeception 4.2.2|
|Infection|Infection - PHP Mutation Testing Framework version 0.26.6|
|Deptrac|deptrac 0.24.0|
|PhpMetrics|PhpMetrics v2.8.2 <http://www.phpmetrics.org> by Jean-François Lépine <https://twitter.com/Halleck45>|

## Important Notes For This Version

**Regarding PHPLOC**. Since January 2023, Sebastian Bergmann decided to archive the repository. So, I won't keep it to
avoid breaking changes as new fixes on PHP may cause problems that will not be fixed.

**Regarding Psalm**. Psalm requires a configuration XML file. You can use your own, create a new one (by running `psalm
--init`) or use a sample file I've added to the image. You can check it at [psalm.xml](./psalm.xml). IN the image, this
file is located at `/code/psalm/`.

To use this sample file, run any Psalm command as `psalm -c /config/psalm/psalm.xml`.
