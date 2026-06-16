resource "genesyscloud_routing_queue" "TransactionSupport_Queue" {
  name                     = "Transaction Support Queue"
  division_id              = var.division_ids["home_ind"]
  description              = "Queue for handling Transaction requests"
  members {
    user_id = var.user_ids["Harry_Porter"]
  }
  acw_wrapup_prompt        = "MANDATORY_TIMEOUT"
  acw_timeout_ms           = 300000
  skill_evaluation_method  = "BEST"
  queue_flow_id            = var.inqueue_flow_ids["Inqueue_CICD"]
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
    CALL = var.script_ids["Genesys_quick_dial"] # Updated to use the new script ID  
    # CHAT  = data.genesyscloud_script.chat.id
  }

  wrapup_codes = [
    var.wrapup_code_ids["billing_success"],
    var.wrapup_code_ids["billing_failure"]
  ]
}