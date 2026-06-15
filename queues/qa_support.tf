resource "genesyscloud_routing_queue" "qa_support" {
  name        = "QA-Support"
  description = "QA Support Queue for handling quality assurance inquiries"

  members {
    user_id  = var.user_ids["jane_smith"]
    ring_num = 1
  }
  division_id = var.division_ids["home_ind"] # Example of assigning this queue to a specific division
}