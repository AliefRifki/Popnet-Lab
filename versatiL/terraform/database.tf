resource "azurerm_mysql_flexible_server" "mysql_server" {
  name                   = "2702251144-project-mysql-server"
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  administrator_login    = "mysqladmin"           # REMEMBER THIS VALUE
  administrator_password = "H@Sh1CoR3!"           # REMEMBER THIS VALUE
  sku_name               = "B_Standard_B1ms"    
  
  delegated_subnet_id = null        # Enables public access on the server
  private_dns_zone_id = null        # Enables public access on the server
}

resource "azurerm_mysql_flexible_database" "mysql_db" {
  name                = "versatiL-database"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mysql_flexible_server.mysql_server.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}

resource "azurerm_mysql_flexible_server_firewall_rule" "mysql_server_firewall" {
  name                = "2702251144-mysql-server-firewall"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mysql_flexible_server.mysql_server.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "255.255.255.255"
}