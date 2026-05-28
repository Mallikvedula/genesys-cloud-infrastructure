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

  # If you want this queue to use a specific Architect flow for routing,
  # pass the flow_ids map from the root module and uncomment the next line.
  # The exact provider attribute may vary by version; check the Genesys Cloud
  # provider docs if you want to bind a queue directly to a flow.
  # flow_id = lookup(var.flow_ids, "support_flow", "")
}
