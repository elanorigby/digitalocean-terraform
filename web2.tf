resource "digitalocean_droplet" "web2" {
  image = "ubuntu-16-04-x64"
  name = "web2"
  region = "LON1"
  size = "512mb"
  private_networking = true
  user_data = "${file("config/webuserdata.sh")}"
  ssh_keys = [
    "${var.ssh_fingerprint}"
  ]
  connection {
    user = "root"
    type = "ssh"
    private_key = "${file(var.pvt_key)}"
    timeout = "2m"
    host = "${digitalocean_droplet.web2.ipv4_address}" 
  }
}
