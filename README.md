# Phalcon Action 

[![GitHub Release][ico-release]][link-github-release]
[![License][ico-license]](LICENSE)

An action for running project with Phalcon framework environment.

> The image is based on [mileschou/phalcon](https://hub.docker.com/r/mileschou/phalcon/).

## Usage
   
Following is an example workflow to run Phalcon test:

```
steps:
  - name: Composer install
    uses: MilesChou/composer-action@master
    with:
      args: install
  - name: Phalcon action
    uses: mileschou/phalcon-action@master
    with:
      args: php vendor/bin/phpunit
```

## Credits

* [MilesChou](https://github.com/MilesChou)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

[ico-release]: https://img.shields.io/github/tag/MilesChou/phalcon-action.svg
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[link-github-release]: https://github.com/MilesChou/phalcon-action/releases
