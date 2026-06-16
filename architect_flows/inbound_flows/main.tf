resource "genesyscloud_flow" "basic_cicd_flow" {

  filepath = "${path.module}/inbound_flows/Basic_CICD_Flow.yaml"
}

