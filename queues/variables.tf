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

variable "wrapup_code_ids" {
  description = "Map of wrap-up code IDs from wrapupcodes module"
  type        = map(string)
}

variable "flow_ids" {
  type        = map(string)
  description = "Map of Architect flow names to Genesys Cloud Flow IDs. Use this when queue routing or queue-level flow associations are required."
  default     = {}
}
