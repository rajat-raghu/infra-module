resource "azurerm_application_insights" "this" {
  name                                  = var.name
  location                              = var.location
  resource_group_name                   = var.resource_group_name
  workspace_id                          = var.log_analytics_resource_id
  application_type                      = var.application_type
  local_authentication_disabled         = !var.enable_local_authentication
  daily_data_cap_in_gb                  = var.daily_quota_gb
  daily_data_cap_notifications_disabled = var.daily_quota_gb == null ? null : !var.daily_quota_notification

  tags = merge(var.tags, { "Name" = var.name })
}
