# Network Interface
resource "azurerm_network_interface" "example" {
  name                = "example-nic"
  location            = "your-location"
  resource_group_name = "your-resource-group-name"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.existing_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

# Network Security Group association
resource "azurerm_network_interface_security_group_association" "example" {
  network_interface_id      = azurerm_network_interface.example.id
  network_security_group_id = data.azurerm_network_security_group.existing_nsg.id
}
