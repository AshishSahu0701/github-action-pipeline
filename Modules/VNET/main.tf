resource "azurerm_virtual_network" "VNETDemo" {
  for_each = var.vnets
  name = each.value.vnetname
  location = each.value.location
  resource_group_name = each.value.rgname
  address_space = each.value.address_space
}