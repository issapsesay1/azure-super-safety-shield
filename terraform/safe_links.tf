hcl
resource "azuread_group" "protected_users" {
  display_name     = "Super-Safety-Shield-Users"
  security_enabled = true
}
output "safe_links_policy_configuration" {
  value = {
    name                        = "Super Safety Shield Policy"
    scan_urls_in_real_time      = true
    wait_for_scanning_complete  = true
    block_user_click_through   = true
    apply_to_internal_messages  = true
    target_group               = azuread_group.protected_users.display_name
  }
}
