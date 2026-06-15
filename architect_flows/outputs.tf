output "inqueue_flow_ids" {
  value = {
    Inqueue_CICD = genesyscloud_flow.Inqueue_CICD.id
    TestInQueueFlow = genesyscloud_flow.TestInQueueFlow.id
  }
}
