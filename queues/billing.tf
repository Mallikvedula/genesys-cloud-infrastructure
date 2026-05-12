resource "genesyscloud_routing_queue" "billing" {
  name        = "Billing-Queue"
  description = "Billing Queue for billing inquiries"

  members {
    user_id  = var.user_ids["jane_smith"]
    ring_num = 1
  }
  division_id = var.division_ids# Example of assigning this queue to a specific division
}