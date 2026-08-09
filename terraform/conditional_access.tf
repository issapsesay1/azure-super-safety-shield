hcl
resource "azuread_conditional_access_policy" "stop_bad_guys" {
  display_name = "Stop Bad Guys - High Risk Block"
  state        = "enabled"
  conditions {
    client_app_types = ["all"]
    applications {
      included_applications = ["All"]
    }
    users {
      included_users = ["All"]
    }
    user_risk_levels = ["high", "medium"]
  }
  grant_controls {
    operator          = "OR"
    built_in_controls = ["block"]
  }
}
