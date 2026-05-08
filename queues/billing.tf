resource "genesyscloud_routing_queue" "billing" {
  name        = "Billing-Queue"
  description = "Billing Queue for ${var.environment}"

  members {
    user_id  = var.user_ids["jane_smith"]
    ring_num = 1
  }
}