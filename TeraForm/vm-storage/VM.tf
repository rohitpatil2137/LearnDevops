

# resource "azurerm_resource_group" "rg-test" {
#   name     = "rg-test"
#   location = var.region
# }

# resource "azurerm_virtual_network" "vnet" {
#   name                = "vnet"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.rg-test.location
#   resource_group_name = azurerm_resource_group.rg-test.name
# }

# resource "azurerm_subnet" "subnet" {
#   name                 = "subnet"
#   resource_group_name  = azurerm_resource_group.rg-test.name
#   virtual_network_name = azurerm_virtual_network.vnet.name
#   address_prefixes     = ["10.0.2.0/24"]
# }

# resource "azurerm_network_interface" "nic" {
#   name                = "nic"
#   location            = azurerm_resource_group.rg-test.location
#   resource_group_name = azurerm_resource_group.rg-test.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.subnet.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# resource "azurerm_linux_virtual_machine" "vm" {
#   name                = "vm"
#   resource_group_name = azurerm_resource_group.rg-test.name
#   location            = azurerm_resource_group.rg-test.location
#   size                = "Standard_B1s"
#   admin_username      = "adminuser"
#   network_interface_ids = [
#     azurerm_network_interface.nic.id,
#   ]

#   admin_ssh_key {
#     username   = "adminuser"
#     public_key = file("~/.ssh/id_rsa.pub")
#   }

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }
# }
