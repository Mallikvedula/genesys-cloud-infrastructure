output "inqueue_flow_ids" {
  value = {
    TestInQueueFlow = genesyscloud_flow.TestInQueueFlow.id
    Inqueue_CICD_v1-0 = genesyscloud_flow.Inqueue_CICD_v1-0.id
  }
}
