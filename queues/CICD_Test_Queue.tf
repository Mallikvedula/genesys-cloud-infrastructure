resource "genesyscloud_routing_queue" "CICD_Test_Queue" {
  name        = "CICD Test Queue"
  description = "Created this queue to check CICD Pipeline"
  division_id = var.division_ids["sales_division"]
}