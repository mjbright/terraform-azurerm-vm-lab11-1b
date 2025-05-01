
# Define security group
resource azurerm_network_security_group sec-grp {
  name                = "${var.prefix}-sec-grp"
  #location            = azurerm_resource_group.rg.location
  location            = var.location
  #resource_group_name = azurerm_resource_group.rg.name
  resource_group_name = var.resource_group

# For SSH traffic
  security_rule {
    name                       = "Allow-SSH"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource azurerm_subnet_network_security_group_association sg-asso {
  subnet_id = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.sec-grp.id
  depends_on = [
    azurerm_network_security_group.sec-grp
  ]
}

