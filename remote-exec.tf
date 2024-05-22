
provisioner "file" {
  source = "./script.sh"
  destination = "/tmp/script.sh"
  
}

provisioner "remote-exec" {
  inline = [ 
    "ls -la /tmp",
    "chomod 777 /tmp/script.sh",
    "./tmp/script.sh"
   ]
   
 }
  connection {
    type     = "ssh"
    user     = self.admin_username
    password = self.admin_password
    host     = self.public_ip_address
  }
