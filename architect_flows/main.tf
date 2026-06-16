module "inqueue_flows" {
  source = "./inqueue_flows"
}

output "inqueue_flow_ids" {
  value = module.inqueue_flows.inqueue_flow_ids
}