resource "azurerm_lb_backend_address_pool" "user01-bpepool" {
    loadbalancer_id = azurerm_lb.user01-lb.id
    name = "user01-BackEndAddressPool"
}
