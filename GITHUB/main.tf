terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.10.0"
    }
  }
}

provider "github" {
  token        = "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"
  organization = "Bachar and his sons"
}

resource "github_repository" "example" {
  name        = "project-3"
  description = "Example repository"
  private     = false
  has_issues  = true
  has_projects = true
  has_wiki    = true
}
