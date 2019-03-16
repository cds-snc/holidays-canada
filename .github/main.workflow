workflow "Build on push" {
  on = "push"
  resolves = [
    "Push container to Docker Hub"
  ]
}

action "Lint Dockerfile" {
  uses = "docker://cdssnc/docker-lint"
}

action "If workflow branch" {
  uses = "actions/bin/filter@24a566c2524e05ebedadef0a285f72dc9b631411"
  needs = ["Lint Dockerfile"]
  args = "branch workflow"
}

action "Login into Docker Hub" {
  uses = "actions/docker/login@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["If workflow branch"]
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
}

action "Build a Docker container" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["Login into Docker Hub"]
  args = "build -t base ."
}

action "Tag :latest" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["Build a Docker container"]
  args = "tag base cdssnc/holidays-canada:latest"
}

action "Tag :$GITHUB_SHA" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["Tag :latest"]
  args = "tag base cdssnc/holidays-canada:$GITHUB_SHA"
}

action "Push container to Docker Hub" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["Tag :$GITHUB_SHA"]
  args = "push cdssnc/holidays-canada"
}

