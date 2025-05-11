
module "resource_group" {
  source = "../../modules/azurerm_resource_group"

  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

module "storage_group" {
  
  source = "../../modules/azurerm_storage_account"

  storage_account_name = var.storage_account_name
  location = var.resource_group_location
  resource_group_name = var.resource_group_location

  depends_on = [ module.resurce_group ]
}