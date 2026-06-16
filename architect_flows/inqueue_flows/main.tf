
resource "genesyscloud_flow" "TestInQueueFlow" {
  
  filepath = "${path.module}/TestInQueueFlow.yaml"
}

resource "genesyscloud_flow" "Inqueue_Flow" {
  
  filepath = "${path.module}/Inqueue_Flow_v1-0.yaml"
}