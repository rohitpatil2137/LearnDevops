

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "myResourceGroup"
  location = "East US"
}

# Output the public IP of the VM
output "web_server_url" {
  value = azurerm_public_ip.public_ip.ip_address
}
