resource "azurerm_resource_group" "resourse2" {
  name     = "rg_sa"
  location = "east us"
}

resource "azurerm_storage_account" "resourse2" {
  name                     = "examplestoraccount"
  resource_group_name      = azurerm_resource_group.resourse2.name
  location                 = azurerm_resource_group.resourse2.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}
