#Shabna Nazar
#02/20/23
#Terraform configuration file to create the mySQl Server and DB in Azure. 

provider "azurerm" {
  features {}
}

#Configuration to assign resource group name and location
resource "azurerm_resource_group" "delassg1" {
  name     = "Deloitte-Assg1"
  location = "East US 2"
}

#Configuration to create mySQL server
resource "azurerm_mysql_server" "delassg1" {
  name                = "delo1server"
  location            = azurerm_resource_group.delassg1.location
  resource_group_name = azurerm_resource_group.delassg1.name

  administrator_login          = "shasqladmin"
  administrator_login_password = "Passpass0"

  sku_name   = "GP_Gen5_2"
  storage_mb = 5120
  version    = "5.7"

  auto_grow_enabled                 = true
  backup_retention_days             = 7
  geo_redundant_backup_enabled      = true
  infrastructure_encryption_enabled = true
  public_network_access_enabled     = true
  ssl_enforcement_enabled           = true
  ssl_minimal_tls_version_enforced  = "TLS1_2"
}

#Configuration to create mySQL db
resource "azurerm_mysql_database" "delassg1" {
  name                = "delo1db"
  resource_group_name = azurerm_resource_group.delassg1.name
  server_name         = azurerm_mysql_server.delassg1.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}

#Configuration to add firewall rule to allow client machine
resource "azurerm_mysql_firewall_rule" "delassg1" {
  name                = "dallow_ip"
  resource_group_name = azurerm_resource_group.delassg1.name
  server_name         = azurerm_mysql_server.delassg1.name
  start_ip_address    = "98.35.33.27"
  end_ip_address      = "98.35.33.27"
}

#end