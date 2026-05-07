resource "genesyscloud_routing_skill" "billing" {
  name = "${var.environment}-Billing-Skill"
}
