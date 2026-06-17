resource "genesyscloud_routing_queue" "CICD_support_queue" {
  name                     = "CICD Support Queue"
  division_id              = var.division_ids["sales_division"]
  description              = "Queue for handling system support requests"
  members {
    user_id = var.user_ids["virat_kohli"]
  }
  queue_flow_id = var.inqueue_flow_ids["TestInQueueFlow"]
  acw_wrapup_prompt        = "MANDATORY_TIMEOUT"
  acw_timeout_ms           = 300000
  skill_evaluation_method  = "BEST"
  auto_answer_only         = true
  enable_transcription     = true
  enable_audio_monitoring  = true
  enable_manual_assignment = true
  
  media_settings_call {
    alerting_timeout_sec      = 30
    service_level_percentage  = 0.7
    service_level_duration_ms = 10000
  }

  default_script_ids = {
    CALL = var.script_ids["AvailableAgentOnQueue"]
  }

  wrapup_codes = [
    var.wrapup_code_ids["system_support_resolved"],
    var.wrapup_code_ids["system_support_escalated"]
  ]
}