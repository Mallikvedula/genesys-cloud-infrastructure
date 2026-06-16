resource "genesyscloud_flow" "basic_cicd_flow" {

  filepath = "${path.module}/inbound_flows/Basic_CICD_Flow.yaml"
}

resource "genesyscloud_flow" "Inqueue_CICD" {
  
  filepath = "${path.module}/inqueue_flows/Inqueue_CICD_v1-0.yaml"
}

resource "genesyscloud_flow" "TestInQueueFlow" {
  
  filepath = "${path.module}/inqueue_flows/TestInQueueFlow.yaml"
}