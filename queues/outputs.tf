output "queue_ids" {
  description = "Map of created queue names to their Genesys Cloud IDs."
  value = {
    billing        = genesyscloud_routing_queue.Billing_Queue.id
    sales          = genesyscloud_routing_queue.sales_queue.id
    support        = genesyscloud_routing_queue.support_queue.id
    CICD_Test_Queue = genesyscloud_routing_queue.CICD_Test_Queue.id
    TransactionSupport_Queue = genesyscloud_routing_queue.TransactionSupport_Queue.id
  }
}
