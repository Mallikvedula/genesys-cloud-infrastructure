output "inqueue_flow_ids" {
  value = {
    TestInQueueFlow = genesyscloud_flow.TestInQueueFlow.id
    Inqueue_Flow = genesyscloud_flow.Inqueue_Flow.id
  }
}
#comment