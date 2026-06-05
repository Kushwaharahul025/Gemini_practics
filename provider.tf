terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
  backend "azurerm" {

    resource_group_name  = "rahulrg"
    storage_account_name = "rahulstg123"
    container_name       = "hello"
    key                  = "new.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "31b619bb-eedc-49a3-a81b-06670c4e81fe"
}
