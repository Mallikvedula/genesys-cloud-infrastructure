output "script_ids" {
  description = "Map of all created script references to their Genesys Cloud IDs"

  value = {
    available_agent_on_queue = data.genesyscloud_script.AvailableAgentOnQueue.id
  }
}
