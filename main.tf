terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.50.0"
    }
  }
}

provider "azurerm" {
  features {

  }
  subscription_id = "25e65bfa-14dd-466e-9f76-e0654ecde46a"
}

resource "azurerm_resource_group" "RG" {
  name     = "rg-pipeline"
  location = "central india"
}