resource "genesyscloud_routing_queue" "ExampleDemoTest" {
  name        = "ExampleDemoTest"
  description = "Example Queue for Demo"
  
  #If member is need to be assigned to queue use this block#
  members {
    user_id  = var.user_ids["Harry_Porter"]
    ring_num = 1
  }
}