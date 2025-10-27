terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.7.0"
    }
  }
}

provider "github" {
  # Configuration options
}


resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"

  template {
  owner      = "10rohan"
  repository = "github-examples"  # lowercase
  include_all_branches = false
}

}