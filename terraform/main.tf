terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">=3.0.0"
    }
  }
  version = ">=1.4.0"
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source =      "./modules/resource-group"
}

module "storage_account" {
  source = "./modules/storage-account"
}
