output "flow_ids" {
  description = "Map of Architect flow names to their Genesys Cloud IDs."
  value = {
    basic_cicd_flow = genesyscloud_architect_flow.basic_cicd_flow.id
  }
}

output "flow_name" {
  description = "The deployed Architect flow name."
  value       = genesyscloud_architect_flow.basic_cicd_flow.name
}
