resource "genesyscloud_routing_wrapupcode" "billing_success" {
  name = "Billing-Success"
}

resource "genesyscloud_routing_wrapupcode" "billing_failure" {
  name = "Billing-Failure"
}

resource "genesyscloud_routing_wrapupcode" "issue_resolved" {
  name = "Issue-Resolved"
}

resource "genesyscloud_routing_wrapupcode" "issue_escalated" {
  name = "Issue-Escalated"
}

resource "genesyscloud_routing_wrapupcode" "system_support_resolved" {
  name = "System-Support-Resolved"
}

resource "genesyscloud_routing_wrapupcode" "system_support_escalated" {
  name = "System-Support-Escalated"
}
