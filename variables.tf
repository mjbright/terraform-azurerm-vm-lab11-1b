
variable resource_group {
  description = "The name of the resource group in which to create the resources."
  nullable    = false
}
variable prefix {
  description = "Name resources prefixed by this value"
  nullable    = false
}
variable location {
  description = "Azure location/region where resources are to be created"
  nullable    = false
}
variable hostname {
  description = "VM name"
  nullable    = false
}
variable dns_name {
  description = "Label for the Domain Name - used to make up the FQDN."
  nullable    = false
}
variable virtual_network_name {
  description = "The name for the virtual network."
  default     = "vnet"
}
variable address_space {
  description = "Address space used by the virtual network"
  default     = "10.0.0.0/16"
}
variable subnet_prefix {
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}
variable vm_size {
  description = "Specifies the size of the virtual machine."
  nullable    = false
}
variable admin_username {
  description = "administrator user name"
  nullable    = false
}
variable admin_priv_key {
  description = "administrator private key (disable password auth)"
  nullable    = false
}

# IMAGES: Can search for images using 'az vm image list' command:
variable image_publisher {
  description = "name of the publisher of the image"
  default     = "Canonical"
}
variable image_offer {
  description = "the name of the offer"
  default     = "0001-com-ubuntu-confidential-vm-focal"
}
variable image_sku {
  description = "image sku to apply"
  default     = "20_04-lts-cvm"
}
variable image_version {
  description = "version of the image"
  default     = "20.04.202306140"
}

