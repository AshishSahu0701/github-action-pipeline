module "resourceGroup" {
    source = "../../Modules/RG"
    rgs = var.RGS
  
}

module "virtuaNetwork" {
    depends_on = [ module.resourceGroup ]
    source = "../../Modules/VNET"
    vnets =var.VNETS
  
}