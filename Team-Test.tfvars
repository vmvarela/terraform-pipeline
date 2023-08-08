name        = "devops"
description = "DevOps"
prefix      = "devops"
topics      = ["devops"]

codeowners = [
  "vmvarela" # Victor M. Varela
]

repositories = {
  "action-clean-files" = {
    description        = "repo with action witch takes a file, reorder data and remove duplicate lines"
    template           = "devops-template-init"
    default_branch     = "main"
    protected_branches = ["main"]
    code_scanners      = ["sonarqube"]
  }

  "action-mov-build-app-android" = {
    description        = "Build app Android"
    template           = "devops-template-init"
    default_branch     = "main"
    protected_branches = ["main"]
    teams_access = {
      "movilidad-android"            = "read",
      "movilidad-android-codeowners" = "read",
    }
  }

  "action-mov-init-gradlew" = {
    description        = "repo with action witch init gradlew with a project"
    template           = "devops-template-init"
    default_branch     = "main"
    protected_branches = ["main"]
    teams_access = {
      "movilidad-android"            = "read",
      "movilidad-android-codeowners" = "read",
    }
  }

  "action-mov-deploy-firebase" = {
    description        = "repo with action witch deploys in firebase"
    template           = "devops-template-init"
    default_branch     = "main"
    protected_branches = ["main"]
    teams_access = {
      "movilidad-android"            = "read",
      "movilidad-android-codeowners" = "read",
    }
  }

  "action-mov-deploy-playstore" = {
    description        = "repo with action witch deploys in App Store"
    template           = "devops-template-init"
    default_branch     = "main"
    protected_branches = ["main"]
    teams_access = {
      "movilidad-android"            = "read",
      "movilidad-android-codeowners" = "read",
    }
  }

  "action-qa-testng-check" = {
    description        = "Repo contains an action which checks TestNg tets"
    template           = "devops-template-init"
    default_branch     = "main"
    protected_branches = ["main"]
  }

  "dockerfiles" = {
    description        = "Documentacion DevOps"
    default_branch     = "main"
    protected_branches = ["main"]
    auto_codeowners    = true
    code_scanners      = ["sonarqube"]
  }

  "github-as-code" = {
    description        = "Gestión de Github con Terraform"
    default_branch     = "main"
    protected_branches = ["main"]
    teams_access = {
      "ssdd-wp-radio-codeowners"          = "write",
      "ssdd-prisachile-codeowners"        = "write",
      "cliente-identidad-codeowners"      = "write",
      "servicios-corporativos-codeowners" = "write",
      "data-azure-codeowners"             = "write",
      "ssdd-multimedia-player-codeowners" = "write",
      "cliente-codeowners"                = "write",
      "diseno-prisa-codeowners"           = "write",
      "ssdd-frontales-radio-codeowners"   = "write",
      "ssdd-editoriales-codeowners"       = "write",
      "qa-codeowners"                     = "write"
    }
    code_scanners = ["sonarqube"]
  }

  "docs" = {
    description        = "Documentacion DevOps"
    default_branch     = "main"
    protected_branches = ["main"]
    topics             = ["markdown"]
    auto_codeowners    = true
    code_scanners      = ["sonarqube"]
  }

  "library" = {
    description        = "Codigo DevOps"
    default_branch     = "main"
    protected_branches = ["main"]
    topics             = ["testing"]
  }

  "common-workflows" = {
    description        = "Repository with reusable workflows"
    default_branch     = "main"
    protected_branches = ["main"]
    topics             = ["reusable"]
    reusable_workflows = true
    auto_codeowners    = true
    teams_access = {
      "qa"                = "read",
      "movilidad-android" = "read",
      "movilidad-ios"     = "read"
    }
  }

  "importer-issue-ops" = {
    description        = "GitHub Actions Importer IssueOps"
    has_issues         = true
    default_branch     = "main"
    protected_branches = ["main"]
    code_scanners      = ["sonarqube"]
  }

  "playbook-ansible" = {
    description        = "This repository contains playbooks to run in ansible"
    template           = "devops-template-init"
    default_branch     = "main"
    protected_branches = ["main"]
  }

  "terraform-github" = {
    description        = "Modulo de terraform para la gestión de Teams y Repositorios GitHub"
    default_branch     = "main"
    protected_branches = ["main"]
    code_scanners      = ["sonarqube"]
  }

  "zaproxy-api-demo" = {
    description        = "Demo of ZAP Proxy API tester"
    default_branch     = "main"
    protected_branches = ["main"]
    teams_access = {
      "qa" = "read"
    }
  }

  "document-root-files" = {
    description        = "Gestión de los ficheros que no son de aplicación y cuelgan del /root "
    default_branch     = "main"
    protected_branches = ["main"]
    topics             = ["ads"]
    teams_access = {
      "ssdd-frontales-radio-codeowners" = "write",
      "ssdd-wp-radio-codeowners"        = "write",
      "cliente-identidad-codeowners"    = "write"
    }
  }

}
