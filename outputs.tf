
locals {
  fqdn = azurerm_public_ip.pip.fqdn
  user = var.admin_username
  ip   = azurerm_linux_virtual_machine.vm.public_ip_address
}

output hostname {
  value = var.hostname
}

output vm_fqdn {
  value = local.fqdn
}

output vm_ip {
  value = local.ip
}

