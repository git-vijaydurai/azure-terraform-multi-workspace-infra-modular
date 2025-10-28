output "nic_id" {
  value = azurerm_network_interface.nic.id
}

output "public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}

output "nsg_id" {
  value = azurerm_network_security_group.nsg.id
}
