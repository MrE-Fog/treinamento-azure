# Versão, Aplicação e Paramêtros
terraform{
    required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tamopstfstates"
    storage_account_name = "cctamopstf"
    container_name       = "tfstatedevops"
    key                  = "terraform.tfstate"
  }
}

# Provedores
provider "azurerm" {
    features {}

    subscription_id = "d7db7887-0e34-451e-98c6-a22c3c394233"
    tenant_id = "f5237a32-dd33-498a-9dff-dfb70f5e8ac7"
}

# Recursos

resource "azurerm_resource_group" "RG_TERRAFORM" {
  name = "RG_TERRAFORM"
  location = "Central US"
}