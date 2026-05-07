resource "genesyscloud_user" "jane_smith" {
  name  = "Jane Smith"
  email = "jane.smith.${var.environment}@yourcompany.com"
  state = "active"
}
