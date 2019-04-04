workflow "Test the Phalcon Actions" {
  on = "push"
  resolves = [
    "Send Discord message"
  ]
}

action "Test the Phalcon commands" {
  uses = "./"
  args = "i"
}

action "Send Discord message" {
  needs = ["Test the Phalcon commands"]
  uses = "appleboy/discord-action@master"
  secrets = [
    "WEBHOOK_ID",
    "WEBHOOK_TOKEN",
  ]
  args = "A new commit has been push to `MilesChou/actions-phalcon`."
}
