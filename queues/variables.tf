variable "environment" {
  type        = string
  description = "Environment name used to prefix queue names"
}

variable "user_ids" {
  type        = map(string)
  description = "A map of user handles to their actual Genesys Cloud User IDs, passed from the users module"
}

variable "skill_ids" {
  type        = map(string)
  description = "A map of skill handles to their actual Genesys Cloud Skill IDs, passed from the skills module"
}

variable "division_ids" {
  type = map(string)
}
