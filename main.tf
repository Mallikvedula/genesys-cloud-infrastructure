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

# 3. Create Queues (Passes user and skill IDs to avoid hardcoding)
module "queues" {
  source      = "./queues"
  environment = var.environment
  user_ids    = module.users.user_ids
  skill_ids   = module.skills.skill_ids
  division_ids = module.division.division_ids # Example of passing division ID to queues
  wrapup_code_ids = module.wrapupcodes.wrapup_code_ids # Example of passing wrapup code IDs to queues
}

# 4. Create Divisions
module "divisions" {
  source = "./divisions"
}


module "wrapupcodes" {
  source = "./wrapupcodes"
}
