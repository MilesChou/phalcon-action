# Phalcon Action 

An action for running project with Phalcon framework environment.

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
