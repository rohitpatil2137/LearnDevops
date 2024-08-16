terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.115.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg"
    storage_account_name = "stgbhosdike"
    container_name       = "stg-ctr"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}



resource "azurerm_resource_group" "rg" {
  name     = "rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "stg-account" {
  name                     = "stgbhosdike"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "stg-ctr" {
  name                  = "stg-ctr"
  storage_account_name  = azurerm_storage_account.stg-account.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "example" {
  name                   = "Hier.txt"
  storage_account_name   = azurerm_storage_account.stg-account.name
  storage_container_name = azurerm_storage_container.stg-ctr.name
  type                   = "Block"
  source                 = "hello.txt"
}

output "rg-name" {
  value = azurerm_resource_group.rg.name
}

output "st-name" {
  value = azurerm_storage_account.stg-account.name
}

output "ctr-name" {
  value = azurerm_storage_container.stg-ctr.name
}