provider "azurerm" {
    version = "~>1.32.0"
    use_msi = true
    subscription_id = "f6edbcf2-a007-4b6b-b42a-860cc26c808f"
    tenant_id       = "3fed61ed-c264-438a-a788-c4add2db59d8"
}

resource "local_file" "first" {
    content     = "first"
    filename = "${path.module}/first.bar"
}

