output "user_ids" {
  description = "Map of all created user references to their Genesys Cloud IDs"
  value = {
    john_doe   = genesyscloud_user.john_doe.id
    jane_smith = genesyscloud_user.jane_smith.id
  }
}
