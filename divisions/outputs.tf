output "division_ids" {
  description = "Map of all created division references to their Genesys Cloud IDs"

  value = {
    hr_division = genesyscloud_auth_division.hr_division.id
  }
}
