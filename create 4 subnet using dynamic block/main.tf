provider "azurerm" {

  features {}

}
resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location

}

resource "azurerm_virtual_network" "example"{

  name                = var.vnet_name
  address_space       = var.address_space
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  dynamic "subnet" {
    for_each = var.subnets
    iterator = item #optional
    content {
      name           = item.value.name
      address_prefix = item.value.address_prefix

    }
  }
}
