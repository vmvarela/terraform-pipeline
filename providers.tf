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
      version = "16.1.0"
    }
  }
}

provider "github" {
  #app_auth {
  # `GITHUB_OWNER`
  # `GITHUB_APP_ID`
  # `GITHUB_APP_INSTALLATION_ID` (https://github.com/organizations/PrisaMedia/settings/installations/??????)
  # `GITHUB_APP_PEM_FILE`
  #}
}

provider "sonarqube" {
}

provider "gitlab" {
  alias    = "cloud"
  base_url = "https://gitlab.com"
  token    = var.gitlab_cloud_token
}

provider "gitlab" {
  alias    = "onprem"
  base_url = var.gitlab_onprem_url
  token    = var.gitlab_onprem_token
}