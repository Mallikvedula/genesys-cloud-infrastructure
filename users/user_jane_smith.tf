resource "genesyscloud_user" "jane_smith" {
  name  = "Jane Smith"
  email = "jane.smith@capgemini.com"
  state = "active"
}
