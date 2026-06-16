
resource "genesyscloud_flow" "TestInQueueFlow" {
  
  filepath = "${path.module}/inqueue_flows/TestInQueueFlow.yaml"
}

resource "genesyscloud_flow" "Inqueue_Flow" {
  
  filepath = "${path.module}/inqueue_flows/Inqueue_Flow_v1-0.yaml"
}