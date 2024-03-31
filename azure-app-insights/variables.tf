variable "resource_group_name" {
  type        = string
  description = "The Resouce group name to provision resources"
}

variable "name" {
  type        = string
  description = "The  name for app insight"
}

variable "location" {
  type        = string
  description = "The location where resources need to be build"
}

variable "enable_local_authentication" {
  type        = bool
  description = "Enabling local authentication, excludes AD based authentication"
  default     = true
}

variable "tags" {
  type        = map(any)
  description = "The tag name (key=value)"
}

variable "log_analytics_resource_id" {
  description = "The resource ID of the Log Analytics Workspace to which logs and metrics will be sent"
  type        = string
}

variable "application_type" {
  description = "Specifies the type of Application Insights to create. Unmatched values are treated as web"
  type        = string
  default     = "other"
}

variable "daily_quota_gb" {
  type        = number
  description = "The instance daily quota for ingestion in GB."
  default     = null
}

variable "daily_quota_notification" {
  type        = bool
  description = "Specifies if a notification email will be sent when the daily data volume cap is met."
  default     = true
}
