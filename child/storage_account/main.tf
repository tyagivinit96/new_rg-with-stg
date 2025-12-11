resource "azurerm_storage_account" "new_stg" {
  name                     = var.new_stg
  resource_group_name      = var.rg_new
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = "staging"
  }
}
