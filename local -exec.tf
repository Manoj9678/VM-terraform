computer_name = "lenovo"

    provisioner "local-exec" {
    command = "echo ${azurerm_public_ip.myazureip.id} >> private_ips.txt"
  }
}