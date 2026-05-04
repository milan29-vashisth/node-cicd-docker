variable "location" {
  description = "Azure region for backend resources"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group for Terraform backend"
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique storage account name for tfstate"
  type        = string
}