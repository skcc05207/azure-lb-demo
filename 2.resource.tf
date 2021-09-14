resource "azurerm_resource_group" "user01-rg" {
    name     = "user01rg"
    location = "koreacentral"

    tags = {
        environment = "Terraform Demo"
    }
}
