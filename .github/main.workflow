workflow "Test the Phalcon Actions" {
  on = "push"
  resolves = [
    "Send Discord message"
  ]
}

action "Test the Phalcon with PHP latest commands" {
  uses = "./"
  args = "i"
}

action "Test the Phalcon with PHP 7.3 commands" {
  uses = "./7.3"
  args = "i"
}

action "Test the Phalcon with PHP 7.2 commands" {
  uses = "./7.2"
  args = "i"
}

action "Test the Phalcon with PHP 7.1 commands" {
  uses = "./7.1"
  args = "i"
}

action "Test the Phalcon with PHP 7.0 commands" {
  uses = "./7.0"
  args = "i"
}

action "Test the Phalcon with PHP 5.6 commands" {
  uses = "./5.6"
  args = "i"
}

action "Test the Phalcon with PHP 5.5 commands" {
  uses = "./5.5"
  args = "i"
}

action "Send Discord message" {
  uses = "appleboy/discord-action@master"
  needs = [
    "Test the Phalcon with PHP latest commands",
    "Test the Phalcon with PHP 7.3 commands",
    "Test the Phalcon with PHP 7.2 commands",
    "Test the Phalcon with PHP 7.1 commands",
    "Test the Phalcon with PHP 7.0 commands",
    "Test the Phalcon with PHP 5.6 commands",
    "Test the Phalcon with PHP 5.5 commands",
  ]
  secrets = [
    "WEBHOOK_ID",
    "WEBHOOK_TOKEN",
  ]
  args = "A new commit has been push to `MilesChou/phalcon-action`."
}
