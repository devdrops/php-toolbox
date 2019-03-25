# Docker/PHP-Toolbox

[![](https://images.microbadger.com/badges/version/devdrops/php-toolbox.svg)](https://microbadger.com/images/devdrops/php-toolbox "Get your own version badge on microbadger.com")  [![](https://images.microbadger.com/badges/image/devdrops/php-toolbox.svg)](https://microbadger.com/images/devdrops/php-toolbox "Get your own image badge on microbadger.com")  [![](https://images.microbadger.com/badges/commit/devdrops/php-toolbox.svg)](https://microbadger.com/images/devdrops/php-toolbox "Get your own commit badge on microbadger.com")

A Docker image designed for PHP developers that care about code quality.

Available on Docker Hub at [devdrops/php-toolbox](https://hub.docker.com/r/devdrops/php-toolbox/). Also check the whole content description at the [MicroBadger](https://microbadger.com/images/devdrops/php-toolbox).

## Features

|TOOL|RELEASE|
|:---|:------|
|PHP|PHP 7.3.3 (cli) (built: Mar  9 2019 00:27:53) ( NTS )|
|Composer|Composer version 1.8.4 2019-02-11 10:52:10|
|phpunit/phpunit|PHPUnit 8.0.5 by Sebastian Bergmann and contributors.|
|squizlabs/php_codesniffer|PHP_CodeSniffer version 3.4.1 (stable) by Squiz (http://www.squiz.net)|
|friendsofphp/php-cs-fixer|PHP CS Fixer 2.14.2 Sunrise by Fabien Potencier and Dariusz Ruminski|
|phpmd/phpmd|PHPMD 2.6.0|
|behat/behat|behat 3.5.0|
|phploc/phploc|phploc 5.0.0 by Sebastian Bergmann.|
|phpstan/phpstan|PHPStan - PHP Static Analysis Tool 0.11.4|
|icanhazstring/composer-unused|0.1.0|

## Install

```bash
docker pull devdrops/php-toolbox
```

## Build it!

First, clone this repo. Then, navigate to it's root source.

For development:

```bash
./develop
```

## Usage

All tools can be acessed by executing:

```bash
docker run -ti --rm -v $(pwd):/code -w /code devdrops/php-toolbox:latest CHOOSEN_BINARY
```

Where `CHOOSEN_BINARY` is the binary you're looking for :wink:

## Examples

You can run this image from whenever the folder you wish. But, just to give a few examples, consider the following structure for instance:

```
.
└── my-project
    ├── Abstract.php
    ├── bootstrap.php
    ├── composer.json
    └── vendor
```

All the commands below will be executed from the project's root folder, `my-project`.

### PHP

```bash
docker run -ti --rm -v $(pwd):/code -w /code devdrops/php-toolbox:latest php -v
```

### Composer

```bash
docker run -ti --rm -v $(pwd):/code -w /code devdrops/php-toolbox:latest composer install
```

### PHPUnit

```bash
docker run -ti --rm -v $(pwd):/code -w /code devdrops/php-toolbox:latest phpunit --version
```

### PHP_CodeSniffer

```bash
docker run -ti --rm -v $(pwd):/code -w /code devdrops/php-toolbox:latest phpcs --standard=PSR2 Abstract.php
```

### PHP CS Fixer

```bash
docker run -ti --rm -v $(pwd):/code -w /code devdrops/php-toolbox:latest php-cs-fixer fix Abstract.php
```

### PHP Mess Detector

```bash
docker run -ti --rm -v $(pwd):/code -w /code devdrops/php-toolbox:latest phpmd Abstract.php text codesize
```

### Behat

```bash
docker run -ti --rm -v $(pwd):/code -w /code devdrops/php-toolbox:latest behat --version
```

### phploc

```bash
docker run -ti --rm -v $(pwd):/code -w /code devdrops/php-toolbox:latest phploc --version
```

### phpstan

```bash
docker run -ti --rm -v $(pwd):/code -w /code devdrops/php-toolbox:latest phpstan --version
```
