resource "genesyscloud_routing_queue" "products" {
  name        = "Products-Queue"
  description = "Products Queue for product-related inquiries"
  
  #If member is need to be assigned to queue use this block#
  members {
    user_id  = var.user_ids["jane_smith"]
    ring_num = 1
  }
}
