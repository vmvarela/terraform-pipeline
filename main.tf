
module "github" {
  source = "github.com/vmvarela/terraform-github?ref=95a2463fe225fe6331c48835c040ba911eea5d4e"

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
