output "user_ids" {
  description = "Map of all created user references to their Genesys Cloud IDs"
  value = {
    john_doe   = genesyscloud_user.john_doe.id
    jane_smith = genesyscloud_user.jane_smith.id
    Harry_Porter = genesyscloud_user.Harry_Porter.id
    vaibhav_sharma = genesyscloud_user.vaibhav_sharma.id
	  virat_kohli = genesyscloud_user.virat_kohli.id
    Adam_Smith = genesyscloud_user.Adam_smith.id
  }
}