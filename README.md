# Docker/PHP-Toolbox

[![](https://images.microbadger.com/badges/version/devdrops/php-toolbox.svg)](https://microbadger.com/images/devdrops/php-toolbox "Get your own version badge on microbadger.com")

A Docker image designed for PHP developers that care about code quality.

Available on Docker Hub at [devdrops/php-toolbox](https://hub.docker.com/r/devdrops/php-toolbox/).

## Features

* PHP 7.0.11
* Composer
* phpunit/phpunit
* squizlabs/php_codesniffer
* friendsofphp/php-cs-fixer
* phpmd/phpmd

## Install

```bash
docker pull devdrops/php-toolbox
```

## Usage

All tools can be acessed by executing:

```bash
# Run the image on interactive mode
docker run -it \
	# Creates a volume on the current path
    -v $(pwd)/toolbox \
    # and define it as the workdir
    -w /toolbox \
    # The image itself :)
    devdrops/php-toolbox
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
docker run -it \
    -v $(pwd)/toolbox \
    -w /toolbox \
    devdrops/php-toolbox \
    php -v
```

### Composer

```bash
docker run -it \
    -v $(pwd)/toolbox \
    -w /toolbox \
    devdrops/php-toolbox \
    composer install
```

### PHPUnit

```bash
docker run -it \
    -v $(pwd)/toolbox \
    -w /toolbox \
    devdrops/php-toolbox \
    phpunit --version
```

### PHP_CodeSniffer

```bash
docker run -it \
    -v $(pwd)/toolbox \
    -w /toolbox \
    devdrops/php-toolbox \
    phpcs --standard=PSR2 Abstract.php
```

### PHP CS Fixer

```bash
docker run -it \
    -v $(pwd)/toolbox \
    -w /toolbox \
    devdrops/php-toolbox \
    php-cs-fixer fix Abstract.php
```

### PHP Mess Detector

```bash
docker run -it \
    -v $(pwd)/toolbox \
    -w /toolbox \
    devdrops/php-toolbox \
    phpmd Abstract.php text codesize
```

