resource "serverspace_server" "k3s_node" {
  name             = var.name
  location         = var.location
  image            = var.image
  ssh_keys         = var.ssh_key_ids
  boot_volume_size = 1024 * 25 # 25G
  cpu              = 1
  ram              = 1024
  nic {
    network      = ""
    network_type = "PublicShared"
    bandwidth    = 50
  }
  nic {
    network      = var.network_id
    network_type = "Isolated"
    bandwidth    = 0
  }
}

resource "null_resource" "node_dns_update_trigger" {
  triggers = {
    k3s_node_address = "${serverspace_server.k3s_node.public_ip_addresses[0]}"
  }
}

resource "cloudflare_record" "k3s_node_dns_record_v4" {
  allow_overwrite = true
  zone_id         = var.dns_zone_id
  name            = join(".", [var.dns_name, var.dns_prefix])
  value           = serverspace_server.k3s_node.public_ip_addresses[0]
  type            = "A"
  ttl             = 300
  depends_on = [
    null_resource.node_dns_update_trigger
  ]
}


