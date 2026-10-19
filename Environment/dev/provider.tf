terraform{
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "5.10.0"
      }
    }

    backend "azurerm" {
      resource_group_name = "rg-tfstate"
      storage_account_name = "adoashishtfstate"
      container_name = "adoashishtfstatecontainer"
      key = "/env/tfpractice/dev.tfstate"
    }
}

provider "azurerm"{
    features {
      
    }
}