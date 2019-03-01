workflow "Build and deploy pull requests" {
  on = "pull_request"
  resolves = ["Ruby Example"]
}

action "Ruby Example" {
  uses = "./.github/ruby_action"
  secrets = ["GITHUB_TOKEN"]
  runs = "make test"
}
