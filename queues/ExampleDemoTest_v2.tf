resource "genesyscloud_routing_queue" "ExampleDemoTest_v2" {
  name        = "ExampleDemoTest_v2"
  description = "Example Queue for Demo"

  division_id = var.division_ids["hr_division"]

  members {
    user_id  = var.user_ids["Harry_Porter"]
    ring_num = 3
  }

  acw_wrapup_prompt = "MANDATORY_TIMEOUT"
  acw_timeout_ms    = 120000

  auto_answer_only = true

  wrapup_codes = [
    var.wrapup_code_ids["billing_success"],
    var.wrapup_code_ids["issue_resolved"]
  ]

  #############################################
  # ✅ BULLSEYE ROUTING (THIS STAYS)
  #############################################

  bullseye_rings {
    expansion_timeout_seconds = 20
    skills_to_remove = [
      var.skill_ids[]
    ]
  }

  bullseye_rings {
    expansion_timeout_seconds = 30
    skills_to_remove = [
      var.skill_ids[]
    ]
  }

  # Additional ring explicitly removing tech_support with a distinct timeout
  bullseye_rings {
    expansion_timeout_seconds = 40
    skills_to_remove = [
      var.skill_ids["tech_support"]
    ]
  }
}