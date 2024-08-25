resource "azurerm_container_registry" "tfer--crpracticedev" {
  admin_enabled          = "true"
  anonymous_pull_enabled = "false"
  data_endpoint_enabled  = "false"

  encryption {
    enabled = "false"
  }

  export_policy_enabled         = "true"
  location                      = "southeastasia"
  name                          = "crpracticedev"
  network_rule_bypass_option    = "AzureServices"
  public_network_access_enabled = "true"
  quarantine_policy_enabled     = "false"
  resource_group_name           = "phuong_group"

  retention_policy {
    days    = "7"
    enabled = "false"
  }

  sku = "Basic"

  trust_policy {
    enabled = "false"
  }

  zone_redundancy_enabled = "false"
}
