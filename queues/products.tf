resource "genesyscloud_routing_queue" "products" {
  name        = "Products-Queue"
  description = "Products Queue for ${var.environment}"

  members {
    user_id  = var.user_ids["jane_smith"]
    ring_num = 1
  }
}
