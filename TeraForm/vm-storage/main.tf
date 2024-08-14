resource "azurerm_resource_group" "rg" {
  name     = "az-rg"   #on azure portal, resource group will create as "az-rg"
  location = var.region
}

resource "azurerm_storage_account" "stg-account" {
  name                     = "az-stg-account"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "stg-ctr" {
  name                  = "az-stg-ctr"
  storage_account_name  = azurerm_storage_account.stg-account.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "example" {
  name                   = "az-Hi.txt"
  storage_account_name   = azurerm_storage_account.stg-account.name
  storage_container_name = azurerm_storage_container.stg-ctr.name
  type                   = "Block"
  source                 = "hello.txt"
}
