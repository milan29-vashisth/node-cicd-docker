output "vm_public_ip" {
  value = azurerm_public_ip.vm_pip.ip_address
}

output "vm_fqdn" {
  value = azurerm_public_ip.vm_pip.fqdn
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}