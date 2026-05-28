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
module "architect_flows" {
  source      = "./architect_flows"
  environment = var.environment

  # Pass resource IDs into the flow module so the YAML flow definition can map them.
  user_ids     = module.users.user_ids
  skill_ids    = module.skills.skill_ids
  queue_ids    = module.queues.queue_ids
  division_ids = module.divisions.division_ids
}
