resource "genesyscloud_routing_queue" "CICD_Test_Queue1" {
  name        = "CICD Test Queue 1"
  description = "Created this queue to check CICD Pipeline"
  division_id = var.division_ids["hr_division"]
}