output "queue_ids" {
  description = "Map of created queue names to their Genesys Cloud IDs."
  value = {
    billing        = genesyscloud_routing_queue.billing.id
    sales          = genesyscloud_routing_queue.sales.id
    support        = genesyscloud_routing_queue.support.id
    CICD_Test_Queue = genesyscloud_routing_queue.CICD_Test_Queue.id
    TransactionSupport_Queue = genesyscloud_routing_queue.TransactionSupport_Queue.id
  }
}
