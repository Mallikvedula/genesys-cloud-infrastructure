resource "genesyscloud_routing_wrapupcode" "billing_success" {
  name = "Billing-Success"
}

resource "genesyscloud_routing_wrapupcode" "billing_failure" {
  name = "Billing-Failure"
}
