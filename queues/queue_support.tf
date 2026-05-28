resource "genesyscloud_routing_queue" "support" {
  name        = "Support-Queue"
  description = "Customer Support Queue for ${var.environment} environment"

  # Adding users to the queue without hardcoding their IDs!
  # We reference the ID using the map passed from the users module.
  members {
    user_id  = var.user_ids["john_doe"]
    ring_num = 1
  }

  members {
    user_id  = var.user_ids["jane_smith"]
    ring_num = 1
  }
}
