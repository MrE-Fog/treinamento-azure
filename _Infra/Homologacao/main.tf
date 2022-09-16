terraform {
      required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription = "55dd171f-a3e5-44a0-b45e-9d53a73218c0" 
  tenant_id = "dcf1318a-c288-47e1-b1f7-61d5e60558e8"
}

