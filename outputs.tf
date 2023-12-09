output "node_ip" {
  value = tolist([
    for server in serverspace_server.k3s_node.nic :  server.ip_address
  ])
  description = "Server internal IPs"
}

output "node_public_ip" {
  value = serverspace_server.k3s_node.public_ip_addresses[0]
  description = "Server external IP"
}
