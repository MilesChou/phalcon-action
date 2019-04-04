# Phalcon Action 

[![GitHub Release][ico-release]][link-github-release]
[![License][ico-license]](LICENSE)

An action for running project with Phalcon framework environment.

> The image is based on [mileschou/phalcon](https://hub.docker.com/r/mileschou/phalcon/).

## Usage
   
An example workflow to run Phalcon test is as follows:

```
workflow "Phalcon Test" {
  on = "push"
  resolves = ["Test"]
}

action "Composer Install" {
  uses = "MilesChou/composer-action@master"
  args = "install"
}

action "Test" {
  uses = "MilesChou/phalcon-action/7.3@master"
  needs = ["Composer Install"]
  args = "php vendor/bin/phpunit"
}
```

## Credits

* [MilesChou](https://github.com/MilesChou)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

[ico-release]: https://img.shields.io/github/tag/MilesChou/phalcon-action.svg
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[link-github-release]: https://github.com/MilesChou/phalcon-action/releases
