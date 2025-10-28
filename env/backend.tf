terraform {
  backend "azurerm" {
    resource_group_name  = "devopsAzure"
    storage_account_name = "azurevijaydurai"
    container_name       = "tfstate"
    key                  = "azure.tfstate"
  }
}
