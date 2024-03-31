resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location

  tags = merge({ "Name" = var.name }, var.tags)
}