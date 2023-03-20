# PHP Version: 7.4

## Features

|TOOL|RELEASE|
|:---|:------|
|PHP|PHP 7.4.33 (cli) (built: Nov 12 2022 09:17:36) ( NTS )|
|Composer|Composer version 2.5.4 2023-02-15 13:10:06|
|phpunit/phpunit|PHPUnit 9.6.5 by Sebastian Bergmann and contributors.|
|squizlabs/php_codesniffer|PHP_CodeSniffer version 3.7.2 (stable) by Squiz (http://www.squiz.net)|
|friendsofphp/php-cs-fixer|PHP CS Fixer 3.15.0 BoY42 by Fabien Potencier and Dariusz Ruminski.|
|phpmd/phpmd|PHPMD 2.13.0|
|behat/behat|behat 3.12.0|
|phpstan/phpstan|PHPStan - PHP Static Analysis Tool 1.10.6|
|icanhazstring/composer-unused|0.8.7|
|vimeo/psalm|Psalm 5.8.0@9cf4f60a333f779ad3bc704a555920e81d4fdcda|
|Xdebug|Xdebug v3.1.6, Copyright (c) 2002-2022, by Derick Rethans|

## Important Notes For This Version

**Regarding PHPLOC**. Since January 2023, Sebastian Bergmann decided to archive the repository. So, I won't keep it to
avoid breaking changes as new fixes on PHP may cause problems that will not be fixed.

**Regarding Psalm**. Psalm requires a configuration XML file. You can use your own, create a new one (by running `psalm
--init`) or use a sample file I've added to the image. You can check it at [psalm.xml](./psalm.xml). IN the image, this
file is located at `/code/psalm/`.

To use this sample file, run any Psalm command as `psalm -c /config/psalm/psalm.xml`.
