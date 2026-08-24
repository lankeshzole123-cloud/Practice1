terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
}
provider "azurerm" {
  features {}
}
variable "rg-name" {
}
variable "rg-name1" {
}
variable "location" {
}
variable "storage_account_name" {

}
resource "azurerm_resource_group" "rg5" {
  name     = var.rg-name
  location = var.location
}
resource "azurerm_resource_group" "rg56" {
  name     = var.rg-name1
  location = var.location
}
resource "azurerm_storage_account" "str5" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg56.name
  location                 = azurerm_resource_group.rg56.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
