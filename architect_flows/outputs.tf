output "inqueue_flow_ids" {
  value = {
    support = genesyscloud_flow.support_inqueue_flow.id
    TestInQueueFlow = genesyscloud_flow.TestInQueueFlow.id
  }
}
