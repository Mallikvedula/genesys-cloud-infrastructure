variable "environment" {
  type        = string
  description = "Environment name used in flow naming and tags."
}

variable "user_ids" {
  type        = map(string)
  description = "Map of user handles to Genesys Cloud User IDs. Used when flow definitions reference users."
  default     = {}
}

variable "skill_ids" {
  type        = map(string)
  description = "Map of skill handles to Genesys Cloud Skill IDs. Used when flow definitions reference skills."
  default     = {}
}

variable "queue_ids" {
  type        = map(string)
  description = "Map of queue handles to Genesys Cloud Queue IDs. Used when the flow routes to specific queues."
  default     = {}
}

variable "division_ids" {
  type        = map(string)
  description = "Map of division handles to Genesys Cloud Division IDs. Use when the flow references divisions."
  default     = {}
}
