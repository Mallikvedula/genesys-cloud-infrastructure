resource "genesyscloud_flow" "basic_cicd_flow" {

  filepath = "${path.module}/inbound_flows/basic_cicd_flow.yaml"
}

resource "genesyscloud_flow" "Inqueue_CICD" {
  
  filepath = "${path.module}/inqueue_flows/Inqueue_CICD.yaml"
}

resource "genesyscloud_flow" "TestInQueueFlow" {
  
  filepath = "${path.module}/inqueue_flows/TestInQueueFlow.yaml"
}