terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-rg"
    storage_account_name = "rohittamra"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}