variable "resource_group_name" {
  default = "devops-rg"
}

variable "location" {
  default = "East US"
}

variable "acr_name" {
  default = "nodeacr12345"
}

variable "vm_admin_username" {
  default = "azureuser"
}

variable "vm_admin_password" {
  sensitive = true
}

variable "vm_name" {
  default = "devops-agent-vm"
}