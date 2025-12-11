 # Azure Resource Group

 module "rg_new" {
   source   = "../child/resource_group"
   rg_new   = "vinit-rg"
   location = "centralindia"
 }

 # Azure Storage Account

 module "new_stg" {
   depends_on = [ module.rg_new ]
   source   = "../child/storage_account"
   new_stg  = "storageaccountvinit"
   rg_new   = "vinit-rg"
   location = "centralindia"
 account_tier = "Standard"
 account_replication_type = "GRS"
 }
