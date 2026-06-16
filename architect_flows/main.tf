module "inqueue_flows" {
  source = "./inqueue_flows"
}

module "inbound_flows" {
  source = "./inbound_flows"
}

output "inqueue_flow_ids" {
  value = module.inqueue_flows.inqueue_flow_ids
}
