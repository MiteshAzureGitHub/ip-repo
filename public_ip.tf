terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "3.29.1"
    }
  }
}

provider "azurerm" {
    tenant_id = "85da9779-9a2e-44d3-9490-e8e2964b4dc1"
    subscription_id = "bbd1c32c-dbe2-4cbf-ace6-bb68d1123a9e"
    features{}
  
}

resource "azurerm_resource_group" "resource-group" {
    name = "demo-grp"
    location = "Central US"

  
}

resource "azurerm_public_ip" "public_ip" {
    name = "mitesh-panchal-2901-ipaddress"
    location = azurerm_resource_group.resource-group.location
    resource_group_name = azurerm_resource_group.resource-group.name
    allocation_method = "Dynamic"

  
}

output "my_output" {
  value = azurerm_public_ip.public_ip
  
}