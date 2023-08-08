terraform {
  required_version = ">= 1.4.0"

  cloud {
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.28.1"
    }
    sonarqube = {
      source  = "jdamata/sonarqube"
      version = "0.16.2"
    }
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "16.2.0"
    }
  }
}

provider "github" {
}

provider "sonarqube" {
}

provider "gitlab" {
  alias = "cloud"
  token = var.gitlab_cloud_token
}

provider "gitlab" {
  alias    = "onprem"
  base_url = var.gitlab_onprem_url
  token    = var.gitlab_onprem_token
}