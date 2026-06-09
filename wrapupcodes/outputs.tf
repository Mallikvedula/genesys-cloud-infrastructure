output "wrapup_code_ids" {
  description = "Map of wrap-up code names to IDs"
  value = {
    billing_success  = genesyscloud_routing_wrapupcode.billing_success.id
    billing_failure  = genesyscloud_routing_wrapupcode.billing_failure.id
    issue_resolved   = genesyscloud_routing_wrapupcode.issue_resolved.id
    issue_escalated  = genesyscloud_routing_wrapupcode.issue_escalated.id
    system_support_resolved = genesyscloud_routing_wrapupcode.system_support_resolved.id
    system_support_escalated = genesyscloud_routing_wrapupcode.system_support_escalated.id
  }
}