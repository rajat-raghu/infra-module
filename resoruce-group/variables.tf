variable "rg_name" {
  type        = string
  description = "Name of resoruce group"
}

variable "tags" {
  type        = map(string)
  description = "Map of Tags"
  default     = {}
}

variable "location" {
  type        = string
  description = "Locatio on RG"
  default     = "West US"
}
