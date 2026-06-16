resource "genesyscloud_flow" "basic_cicd_flow" {

  filepath = "${path.module}/Basic_CICD_Flow.yaml"
}

