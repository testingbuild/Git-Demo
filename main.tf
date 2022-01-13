provider "azurerm" {
  features {
    
  }
}

terraform {
  backend "azurerm" {
    resource_group_name = "terraform"
    storage_account_name = "terraformstorage112233"
    container_name = "tfstate"
    key = "demo.tfstate"
  }
}

resource "azurerm_resource_group" "resourse1" {
  count = length(var.rg_name)
  name = var.rg_name[count.index]
  location = var.location
}