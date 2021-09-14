resource "azurerm_network_security_group" "mynsg" {
    name                = "myNetworkSecurityGroup"
    location            = azurerm_resource_group.user01-rg.location
    resource_group_name = azurerm_resource_group.user01-rg.name
    
    security_rule {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"   ## Admin 서버 IP 주소 혹은 접속하는 서버(or PC) IP주소
        destination_address_prefix = "*"
    }
 security_rule {
        name                       = "HTTP"
        priority                   = 2001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
security_rule {
        name                       = "SSH-jenskins"
        priority                   = 3001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "20.196.223.108"	## Admin 서버 ip주소 혹은 접속하는(or pc) ip주소
        destination_address_prefix = "*"
    }

security_rule {
        name                       = "SSH-home(pc)"
        priority                   = 4001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "192.168.6.56"	## Admin 서버 ip주소 혹은 접속하는(or pc) ip주소
        destination_address_prefix = "*"
    }

security_rule {
        name                       = "SSH-adminserver"
        priority                   = 5001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "20.196.223.152"	## Admin 서버 ip주소 혹은 접속하는(or pc) ip주소
        destination_address_prefix = "*"
    }
    tags = {
        environment = "Terraform Demo"
    }
}

