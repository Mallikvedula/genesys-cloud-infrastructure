output "skill_ids" {
  description = "Map of all created skill references to their Genesys Cloud IDs"
  value = {
    tech_support = genesyscloud_routing_skill.tech_support.id
    billing      = genesyscloud_routing_skill.Billing_Skill.id
    product_support = genesyscloud_routing_skill.product_support.id
    support     = genesyscloud_routing_skill.support_skill.id
    system_support = genesyscloud_routing_skill.system_support.id
    Language_Skill = genesyscloud_routing_skill.Language_Skill.id
  }
}
