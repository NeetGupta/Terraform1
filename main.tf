terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # or whatever version you're targeting
    }
  }
}
provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "service" {
  name = var.rg_name
  location = var.rg_location
}
resource "azurerm_app_service_plan" "service" {
  name = var.app_servicename
  location = var.rg_location
  resource_group_name = azurerm_resource_group.service.name
  kind = "linux"
  reserved = true
  sku {
    tier = "Free"
     size = "F1"
  }
}
resource "azurerm_app_service" "linuxwebapp" {
  name = var.app_servicewebapp
  location = azurerm_resource_group.service.location
  resource_group_name = azurerm_resource_group.service.name
  app_service_plan_id = azurerm_app_service_plan.service.id
}
