resource "azurerm_resource_group" "backend_rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    purpose = "terraform-backend"
  }
}

resource "azurerm_storage_account" "backend_sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.backend_rg.name
  location                 = azurerm_resource_group.backend_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false

  blob_properties {
    versioning_enabled = true

    delete_retention_policy {
      days = 7
    }

    container_delete_retention_policy {
      days = 7
    }
  }

  tags = {
    purpose     = "terraform-backend"
    environment = "shared"
  }
}

resource "azurerm_storage_container" "dev" {
  name                  = "tfstate-dev"
  storage_account_name  = azurerm_storage_account.backend_sa.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "uat" {
  name                  = "tfstate-uat"
  storage_account_name  = azurerm_storage_account.backend_sa.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "prod" {
  name                  = "tfstate-prod"
  storage_account_name  = azurerm_storage_account.backend_sa.name
  container_access_type = "private"
}