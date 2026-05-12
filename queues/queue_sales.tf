resource "genesyscloud_routing_queue" "sales" {
  name        = "Sales-Queue"
  description = "Sales Queue for sales-related inquiries"

  members {
    user_id  = var.user_ids["jane_smith"]
    ring_num = 1
  }
}
