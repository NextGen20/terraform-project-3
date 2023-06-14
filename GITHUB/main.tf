terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.10.0"
    }
  }
}

provider "github" {

  token = "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"
  # organization = "Bachar and his sons"
}

resource "github_repository" "example" {
  name        = "project-3"
  description = "Example repository"
  visibility     = "public"
  has_issues  = true
  has_projects = true
  has_wiki    = true
}
