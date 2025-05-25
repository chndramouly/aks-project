terraform {
  backend "azurerm" {
    resource_group_name  = "aks-project-rg"
    storage_account_name = "aksprojectstorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}