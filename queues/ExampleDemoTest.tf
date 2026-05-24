resource "genesyscloud_routing_queue" "ExampleDemoTest" {
  name        = "ExampleDemoTest"
  description = "Example Queue for Demo"

  #############################################
  # DIVISION
  #############################################
  division_id = var.division_ids["hr_division"]

  #############################################
  # MEMBERS
  #############################################
  members {
    user_id  = var.user_ids["Harry_Porter"]
    ring_num = 1
  }

  #############################################
  #  AFTER CALL WORK
  #############################################
  acw_wrapup_prompt = "MANDATORY_TIMEOUT"
  acw_timeout_ms    = 120000

  #############################################
  #  AUTO ANSWER
  #############################################
  auto_answer_only = true

  #############################################
  # WRAP-UP CODES
  #############################################
  wrapup_codes = [
    var.wrapup_code_ids["billing_success"],
    var.wrapup_code_ids["issue_resolved"]
  ]

  #############################################
  # ✅ BULLSEYE ROUTING
  #############################################
  # Ring 2: Relax skills (remove 1 skill)
  bullseye_rings {
    expansion_timeout_seconds = 30
    skills_to_remove          = [
      var.skill_ids["tech_support"]   # Example skill
    ]
  }

  # Ring 3: Fully relaxed (remove multiple skills)
  bullseye_rings {
    expansion_timeout_seconds = 30
    skills_to_remove          = [
      var.skill_ids["product_support"],  # Example skill
      var.skill_ids["billing"]           # Example skill
    ]
  }
}