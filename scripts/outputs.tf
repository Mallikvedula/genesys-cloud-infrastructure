output "script_ids" {
  description = "Map of all created script references to their Genesys Cloud IDs"

  value = {
    AvailableAgentOnQueue = data.genesyscloud_script.AvailableAgentOnQueue.id
  }
}
