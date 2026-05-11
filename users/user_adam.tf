resource "genesyscloud_user" "Adam_smith" {
  name  = "Adam smith"
  email = "Adam.smith.${var.environment}@yourcompany.com"
  state = "active"
}