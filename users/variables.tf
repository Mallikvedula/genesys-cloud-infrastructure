variable "environment" {
  type        = string
  description = "Environment name used to dynamically create distinct user emails for dev/prod"
}

variable "skill_ids" {
  type        = map(string)
  description = "A map of skill handles to their actual Genesys Cloud Skill IDs, passed from the skills module"
}