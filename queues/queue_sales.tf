resource "genesyscloud_routing_queue" "sales" {
  name        = "${var.environment}-Sales-Queue"
  description = "Sales Queue for ${var.environment}"

  members {
    user_id  = var.user_ids["jane_smith"]
    ring_num = 1
  }
}
