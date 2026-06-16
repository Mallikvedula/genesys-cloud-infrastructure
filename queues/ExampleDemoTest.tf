resource "genesyscloud_routing_queue" "ExampleDemoTest" {
  name        = "ExampleDemoTest"
  description = "Example Queue for Demo"

  
  division_id = var.division_ids["hr_division"]

  members {
    user_id  = var.user_ids["Harry_Porter"]
    ring_num = 1
  }

  acw_wrapup_prompt = "MANDATORY_TIMEOUT"
  acw_timeout_ms    = 120000

 
  auto_answer_only = true

  queue_flow_id = var.inqueue_flow_ids["Inqueue_CICD"]

  default_script_ids = {
    CALL = var.script_ids["AvailableAgentOnQueue"]
  }
  

  
  wrapup_codes = [
    var.wrapup_code_ids["billing_success"],
    var.wrapup_code_ids["issue_resolved"]
  ]

  # ✅ BULLSEYE ROUTING
  #Ring 1: no relaxation of skills
  
# Ring 1 → STRICT (mandatory)
bullseye_rings {
  expansion_timeout_seconds = 31
  skills_to_remove = []
}

# Ring 2 → remove billing
bullseye_rings {
  expansion_timeout_seconds = 30
  skills_to_remove = [
    var.skill_ids["billing"]
  ]
}

# Ring 3 → remove billing + tech_support (cumulative)

bullseye_rings {
  expansion_timeout_seconds = 35   # change from 30
  skills_to_remove = [
    var.skill_ids["tech_support"]
  ]
}
}