# Data source for an existing Virtual Network (VNet)
data "azurerm_virtual_network" "existing_vnet" {
  name                = "your-existing-vnet-name"  # Replace with the name of your VNet
  resource_group_name = "your-resource-group-name" # Replace with the name of your resource group
  
}

# Data source for an existing Subnet within the VNet
data "azurerm_subnet" "existing_subnet" {
  name                 = "your-existing-subnet-name" # Replace with the name of your Subnet
  virtual_network_name = data.azurerm_virtual_network.existing_vnet.name
  resource_group_name  = data.azurerm_virtual_network.existing_vnet.resource_group_name
}

# Data source for an existing Network Security Group (NSG)
data "azurerm_network_security_group" "existing_nsg" {
  name                = "your-existing-nsg-name"  # Replace with the name of your NSG
  resource_group_name = "your-resource-group-name" # Replace with the name of your resource group
}



