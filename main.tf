# 1. Create Skills
module "skills" {
  source      = "./skills"
  environment = var.environment
}

# 2. Create Users
module "users" {
  source      = "./users"
  environment = var.environment
}

# 3. Create Divisions
module "divisions" {
  source = "./divisions"
}

# 4. Create Wrap-up Codes
module "wrapupcodes" {
  source = "./wrapupcodes"
}

# 5. Create Queues (Pass user/skill/division IDs from other modules)
module "queues" {
  source           = "./queues"
  environment      = var.environment
  user_ids         = module.users.user_ids
  skill_ids        = module.skills.skill_ids
  division_ids     = module.divisions.division_ids
  wrapup_code_ids = module.wrapupcodes.wrapup_code_ids
}

# 6. Deploy Architect Flows
# Flows are created using the genesyscloud_flow resource.
# The flow definition is loaded from the exported Architect YAML file path.
# IMPORTANT: genesyscloud_flow expects filepath argument pointing to the flow definition file.

# Basic CICD Inbound Call Flow
# This flow handles inbound calls with greeting and menu routing.
# The YAML file is exported from Genesys Architect and deployed as-is.
resource "genesyscloud_flow" "basic_cicd_flow" {
  # The filepath argument is required and points to the YAML flow definition file.
  # Terraform reads this file and deploys it to Genesys Cloud.
  filepath = "${path.module}/architect_flows/CICD_Flow_v1-0.yaml"
}
