output "skill_ids" {
  description = "Map of all created skill references to their Genesys Cloud IDs"
  value = {
    tech_support = genesyscloud_routing_skill.tech_support.id
    billing      = genesyscloud_routing_skill.billing.id
  }
}
