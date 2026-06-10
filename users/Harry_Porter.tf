resource "genesyscloud_user" "Harry_Porter" {
  name  = "Harry Porter"
  # Using the environment variable ensures emails don't clash between Dev and Prod
  email = "harry_porter@yourcompany.com"
  state = "active"
  routing_skills {
    skill_id    = var.skill_ids["system_support"]
    proficiency = 4.5
  }
}