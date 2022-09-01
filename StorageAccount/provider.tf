
# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  backend "azurerm" {
        resource_group_name  = "Phanindra_DevOps_Demo"
        storage_account_name = "phanindrasa01"
        container_name       = "terraform"
        key                  = "storageaccountterraform.tfstate"
        sas_token = "sp=racwl&st=2022-09-01T03:57:04Z&se=2022-09-01T11:57:04Z&spr=https&sv=2021-06-08&sr=c&sig=JROdLg9wwOsnJATwpPOxmLjZUM3eDKdsc7ezRCi2x0w%3D"
    }
}

provider "azurerm" {
  features {}

  subscription_id = "5ee40778-4886-47ce-9ec0-4d6048bb84e1"
  client_id       = "2c18f6da-4db4-485d-98ba-b0c64e6fdf74"
  client_secret   = "kMo8Q~Pkq~0FnFbBYK5Ij3vy4urWCwrtDLIQ1b_V"
  tenant_id       = "c7738379-585d-496e-af73-fbb7b4ab5136"
}
