terraform {
  required_providers {
    github = {
        source = "integrations/github"
        version = "4.17.0"
    }
  }
}

provider "github" {
}

resource "github_repository" "example" {
  name = "example"
  visibility = "public"
}

/*
template {
  owner = "Luqman Olawin"
  repository = "terraform-module-template"
}
*/