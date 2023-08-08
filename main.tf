
module "github" {
  # source = "https://github.com/vmvarela/terraform-github.git"
  source = "./terraform-github"

  github_owner       = var.github_owner
  github_mirror_auth = var.github_mirror_auth
  name               = var.name
  description        = var.description
  prefix             = var.prefix
  topics             = var.topics
  admins             = var.admins
  codeowners         = var.codeowners
  developers         = var.developers
  repositories       = var.repositories

  providers = {
    gitlab.onprem = gitlab.onprem
    gitlab.cloud  = gitlab.cloud
  }

}
