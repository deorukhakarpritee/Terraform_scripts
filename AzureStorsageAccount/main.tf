# Write terraform configuration for the storage account with 1 vnet and 2 subnets with depends_on meta argument

resource "azurerm_resource_group" "example" {
  name     = var.prefix
  location = var.location

}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    "environment" = "testing"
  }

  depends_on = [
    azurerm_resource_group.example
  ]

}

resource "azurerm_virtual_network" "example" {

  name                = "${var.prefix}-vnet"
  address_space       = var.address_space
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  subnet {
    name           = var.subnet_name[0]
    address_prefix = var.subnet_range[0]
  }

  subnet {
    name           = var.subnet_name[1]
    address_prefix = var.subnet_range[1]
  }


}

