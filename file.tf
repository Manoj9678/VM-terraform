provisioner "file" {
        connection{
            type = "ssh"
            user = "appadmin"
            password = "Manoj@15122000"
            host  = azurerm_public_ip.mydevip002.ip_address
         }
        source = "bash.sh"
        destination = "/home/appadmin/bash.sh"
  }