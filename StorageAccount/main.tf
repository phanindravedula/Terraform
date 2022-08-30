
#Data section
data "azurerm_resource_group" "ResGroup" {
  name = "Phanindra_DevOps_Demo"
}

#Resource section
resource "azurerm_storage_account" "StorAccount1" {
  name                     = "phanindravedulasa01"
  resource_group_name      = data.azurerm_resource_group.ResGroup.name
  location                 = data.azurerm_resource_group.ResGroup.location
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = var.replicationType
}

resource "azurerm_storage_container" "Container1" {
  name                  = "images"
  storage_account_name  = azurerm_storage_account.StorAccount1.name
  container_access_type = "private"
}
