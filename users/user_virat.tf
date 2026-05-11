resource "genesyscloud_user" "virat_kohli" {
  name  = "Virat Kohli"
  email = "virat.kohli.${var.environment}@yourcompany.com"
  state = "active"
}
