terraform {
  required_version = ">= 1.4.0"

  cloud {
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.32.0"
    }
    sonarqube = {
      source  = "jdamata/sonarqube"
      version = "0.16.4"
    }
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "16.4.1"
      configuration_aliases = [
        gitlab.cloud,
        gitlab.onprem
      ]
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