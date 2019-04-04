# Phalcon Action 

An action for running project with Phalcon framework environment.

> The image is using by [mileschou/phalcon](https://hub.docker.com/r/mileschou/phalcon/).

## Usage
   
An example workflow to run Phalcon test is as follows:

```
workflow "Phalcon Test" {
   on = "push"
   resolves = ["Test"]
}

action "Test" {
   uses = "MilesChou/phalcon-action/7.3@master"
   args = "php vendor/bin/phpunit"
}
```
