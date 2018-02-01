# Docker/PHP-Toolbox

[![](https://images.microbadger.com/badges/version/devdrops/php-toolbox.svg)](https://microbadger.com/images/devdrops/php-toolbox "Get your own version badge on microbadger.com")

A Docker image designed for PHP developers that care about code quality.

Available on Docker Hub at [devdrops/php-toolbox](https://hub.docker.com/r/devdrops/php-toolbox/).

## Features

|TOOL|RELEASE|
|:---|:------|
|PHP|PHP 7.1.4 (cli) (built: Apr 25 2017 03:19:44) ( NTS )|
|Composer|Composer version 1.6.3 2018-01-31 16:28:17|
|phpunit/phpunit|PHPUnit 6.5.5 by Sebastian Bergmann and contributors.|
|squizlabs/php_codesniffer|PHP_CodeSniffer version 3.2.2 (stable) by Squiz (http://www.squiz.net)|
|friendsofphp/php-cs-fixer|PHP CS Fixer 2.10.0 Bowling Bear by Fabien Potencier and Dariusz Ruminski|
|phpmd/phpmd|PHPMD 2.6.0|
|behat/behat|behat 3.4.3|

## Install

```bash
docker pull devdrops/php-toolbox
```

## Usage

All tools can be acessed by executing:

```bash
make run COMMAND='your_instruction_here'
```

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
make run COMMAND='php -v'
```

### Composer

```bash
make run COMMAND='composer install'
```

### PHPUnit

```bash
make run COMMAND='phpunit --version'
```

### PHP_CodeSniffer

```bash
make run COMMAND='phpcs --standard=PSR2 Abstract.php'
```

### PHP CS Fixer

```bash
make run COMMAND='php-cs-fixer fix Abstract.php'
```

### PHP Mess Detector

```bash
make run COMMAND='phpmd Abstract.php text codesize'
```

### Behat

```bash
make run COMMAND='behat --version'
```
