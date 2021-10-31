# devdrops/php-toolbox

[![](https://images.microbadger.com/badges/version/devdrops/php-toolbox.svg)](https://microbadger.com/images/devdrops/php-toolbox "Get your own version badge on microbadger.com")  [![](https://images.microbadger.com/badges/image/devdrops/php-toolbox.svg)](https://microbadger.com/images/devdrops/php-toolbox "Get your own image badge on microbadger.com")  [![](https://images.microbadger.com/badges/commit/devdrops/php-toolbox.svg)](https://microbadger.com/images/devdrops/php-toolbox "Get your own commit badge on microbadger.com")

A Docker image designed for PHP developers that care about code quality.

Available on Docker Hub at [devdrops/php-toolbox](https://hub.docker.com/r/devdrops/php-toolbox/). Also check the whole content description at the [MicroBadger](https://microbadger.com/images/devdrops/php-toolbox).

## Features

|TOOL|RELEASE|
|:---|:------|
|PHP|PHP 8.0.12 (cli) (built: Oct 21 2021 15:24:13) ( NTS )|
|Composer|Composer 2.1.10 2021-10-29 22:34:57|
|phpunit/phpunit|PHPUnit 9.5.10 by Sebastian Bergmann and contributors.|
|squizlabs/php_codesniffer|PHP_CodeSniffer version 3.6.1 (stable) by Squiz (http://www.squiz.net)|
|friendsofphp/php-cs-fixer|PHP CS Fixer 3.2.1 Mountains by Fabien Potencier and Dariusz Ruminski|
|phpmd/phpmd|PHPMD 2.10.2|
|behat/behat|behat 3.8.1|
|phploc/phploc|phploc 7.0.2 by Sebastian Bergmann.|
|phpstan/phpstan|PHPStan - PHP Static Analysis Tool 0.12.25|
|icanhazstring/composer-unused|0.5.6|
|vimeo/psalm|Psalm 4.11.2@6fba5eb554f9507b72932f9c75533d8af593688d|
|Xdebug|Xdebug v3.1.1, Copyright (c) 2002-2021, by Derick Rethans|

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
