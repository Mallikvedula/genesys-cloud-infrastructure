resource "genesyscloud_user" "john_doe" {
  name  = "John Doe"
  # Using the environment variable ensures emails don't clash between Dev and Prod
  email = "john.doe@yourcompany.com"
  state = "active"
}
