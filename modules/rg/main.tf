# resource "azurerm_resource_group" "rg" {
#   name     = var.resource_group_name
#   location = var.location
# }



data "azurerm_resource_group" "rg" {
  name = "devopsAzure"  # Replace with your actual RG name
}
