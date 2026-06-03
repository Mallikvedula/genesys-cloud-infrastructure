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
  source          = "./queues"
  environment     = var.environment
  user_ids        = module.users.user_ids
  skill_ids       = module.skills.skill_ids
  division_ids    = module.divisions.division_ids
  wrapup_code_ids = module.wrapupcodes.wrapup_code_ids
}

# 6. Deploy Architect Flows
# Inbound Call Flows - Execute when calls first arrive at the system
resource "genesyscloud_flow" "basic_cicd_flow" {
  # Deploys the CICD inbound call flow (greeting, IVR, routing)
  filepath = "${path.module}/architect_flows/inbound_flows/Basic_CICD_Flow.yaml"
}

# In-Queue Call Flows - Execute while customers wait in queues
resource "genesyscloud_flow" "support_inqueue_flow" {
  # Deploys the support queue in-queue call flow (hold messages, callbacks)
  # After deployment, manually map this flow to a queue in Genesys Cloud UI
  # See architect_flows/INQUEUE_DEPLOYMENT_GUIDE.md for mapping instructions
  filepath = "${path.module}/architect_flows/inqueue_flows/Inqueue_CICD_v1-0.yaml"
}