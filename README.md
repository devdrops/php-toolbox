# devdrops/php-toolbox :whale: :elephant:

![Hadolint status](https://github.com/devdrops/php-toolbox/actions/workflows/hadolint.yml/badge.svg?branch=main)
![Trivy status](https://github.com/devdrops/php-toolbox/actions/workflows/trivy.yml/badge.svg?branch=main)
![Snyk Container status](https://github.com/devdrops/php-toolbox/actions/workflows/snyk-container.yml/badge.svg?branch=main)

A Docker image designed for PHP developers that care about code quality.

Available on Docker Hub at [devdrops/php-toolbox](https://hub.docker.com/r/devdrops/php-toolbox/).

## The Project

Each PHP version, starting from **7.4**, have at least 2 tags: one version without Xdebug, and another with Xdebug.

- [PHP 7.4:](./7.4)
  - `7.4`, `7.4-xdebug`
- [PHP 8.0:](./8.0)
  - `8.0`, `8.0-xdebug`
- [PHP 8.1:](./8.1)
  - `8.1`, `8.1-xdebug`
- [PHP 8.2:](./8.2)
  - `8.2`, `8.2-xdebug`
- [PHP 8.3:](./8.3)
  - `latest`, `8.3`, `8.3-xdebug`

The following tools are available:

|Tool|Description|
|:---|:---|
|[PHP](https://www.php.net/)|The PHP programming language.|
|[PHPUnit](https://phpunit.de/index.html)|PHPUnit is a programmer-oriented testing framework for PHP.|
|[PHP_CodeSniffer](https://github.com/PHPCSStandards/PHP_CodeSniffer/)|PHP_CodeSniffer tokenizes PHP files and detects violations of a defined set of coding standards.|
|[PHP CBF](https://phpqa.io/projects/phpcbf.html)|PHP Code Beautifier and Fixer automatically correct coding standard violations.|
|[PHP CS Fixer](https://github.com/PHP-CS-Fixer/PHP-CS-Fixer)|A tool to automatically fix PHP Coding Standards issues.|
|[PHP Mess Detector](https://phpmd.org/)|Checks for bugs, suboptimal code, overcomplicated expressions, unused parameters etc.|
|[Behat](https://docs.behat.org/en/latest/)|A php framework for autotesting your business expectations.|
|[PHPStan](https://phpstan.org/)|PHPStan finds bugs in your code without writing tests.|
|[composer-unused](https://github.com/composer-unused/composer-unused)|Show unused composer dependencies by scanning your code.|
|[Psalm](https://psalm.dev/)|Prevent runtime errors and fix bugs automatically.|
|[Pest](https://pestphp.com/)|The elegant PHP testing framework.|
|[Rector](https://github.com/rectorphp/rector)|Instant Upgrades and Automated Refactoring of any PHP 5.3+ code.|
|[PHPArkitect](https://github.com/phparkitect/arkitect)|Put your architectural rules under test!|
|[phpspec](https://phpspec.net/en/stable/)|A php toolset to drive emergent design by specification.|
|[Codeception](https://codeception.com/)|Codeception collects and shares best practices and solutions for testing PHP web applications.|
|[Infection](https://infection.github.io/)|PHP Mutation Testing Framework|
|[Deptrac](https://qossmic.github.io/deptrac/)|Deptrac is a static code analysis tool for PHP that helps you communicate, visualize and enforce architectural decisions in your projects.|
|[PhpMetrics](https://phpmetrics.org/)|PhpMetrics provides various metrics about PHP projects.|
|[PDepend](https://pdepend.org/)|PHP_Depend software analyzer and metric tool.|

## Install

```bash
docker pull devdrops/php-toolbox
```

## Usage

All tools can be accessed by executing:

```bash
docker run -ti --rm -v $(pwd):/code -w /code devdrops/php-toolbox:latest <CHOOSEN_TOOL>
```

Where `<CHOOSEN_TOOL>` is the binary you're looking for :wink:

## Build it!

Clone this repository. Then, using a terminal window, go to it's root directory. Each version folder have it's own
`Makefile` with the following commands (you can run `make help` to see a brief explanation of each command):

```
build                          Build the official tag.
debug                          Build only the image with Xdebug.
develop                        Build '*-dev' tag, including Xdebug.
hadolint                       Lint ./Dockerfile with Hadolint
help                           Print information of each Make task.
latest                         Build two images: 1. official tag, 2. official tag + Xdebug.
push                           Pushes to Docker Hub two images: 1. official tag, 2. official tag + Xdebug.
release                        Build and deploy official tags.
shellcheck                     Run shellcheck to scan sh files at ./helpers.
```

