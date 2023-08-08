variable "github_owner" {
  type = string
}

variable "name" {
  description = "Nombre equipo"
  type        = string
}

variable "prefix" {
  type    = string
  default = ""
}

variable "topics" {
  type    = set(string)
  default = []
}

variable "description" {
  type    = string
  default = ""
}

variable "admins" {
  type    = set(string)
  default = []
}

variable "codeowners" {
  type    = set(string)
  default = []
}

variable "developers" {
  type    = set(string)
  default = []
}

variable "repositories" {
  type = map(object({
    description        = optional(string, "")
    default_branch     = optional(string, "")
    protected_branches = optional(set(string), [])
    visibility         = optional(string, "private")
    topics             = optional(set(string), [])
    homepage_url       = optional(string, "")
    has_issues         = optional(bool, false)
    is_template        = optional(bool, false)
    template           = optional(string, null)
    archived           = optional(bool, false)
    archive_on_destroy = optional(bool, true)
    advanced_security  = optional(bool, false)
    dependabot         = optional(bool, true)
    secret_scanning    = optional(bool, true)
    reusable_workflows = optional(bool, false)
    teams_access       = optional(map(string), {})
    deploy_keys        = optional(map(string), {})
    code_scanners      = optional(set(string), [])
    codeql_languages   = optional(set(string), ["java"])
    security_scanners  = optional(set(string), [])
    auto_codeowners    = optional(bool, false)
    gitlab_mirror      = optional(string, "") # cloud, onprem or ""
    gitlab_url         = optional(string, "") # path
  }))
  default = {}
}


variable "gitlab_cloud_token" {
  type        = string
  description = "gitlab.com token"
  default     = ""
}

variable "gitlab_onprem_url" {
  type        = string
  description = "gitlab (on-prem) base url"
  default     = ""
}

variable "gitlab_onprem_token" {
  type        = string
  description = "gitlab (on-prem) token"
  default     = ""
}

# username:token to push into github from gitlab
variable "github_mirror_auth" {
  type        = string
  description = "github.com username:token"
  default     = ""
}
