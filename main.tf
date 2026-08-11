terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "adoashishtfstate"
    container_name       = "adoashishtfstatecontainer"
    key                  = "/github_action/demo/pipeline.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "RG" {
  name     = "rg-githubaction"
  location = "central india"
}