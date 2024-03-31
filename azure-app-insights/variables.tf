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


variable "tags" {
  type        = map(any)
  description = "The tag name (key=value)"
}

variable "application_type" {
  description = "Specifies the type of Application Insights to create. Unmatched values are treated as web"
  type        = string
  default     = "other"
}
