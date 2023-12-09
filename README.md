## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.3 |
| cloudflare | >= 4.20.0 |
| serverspace | >= 0.3.0 |

## Providers

| Name | Version |
|------|---------|
| cloudflare | >= 4.20.0 |
| null | n/a |
| serverspace | >= 0.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.k3s_node_dns_record_v4](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [null_resource.node_dns_update_trigger](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [serverspace_server.k3s_node](https://registry.terraform.io/providers/itglobalcom/serverspace/latest/docs/resources/server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| dns\_name | dns name | `string` | `""` | no |
| dns\_prefix | dns prefix | `string` | `"k3s"` | no |
| dns\_zone | dns zone | `string` | `"sibns.ru"` | no |
| dns\_zone\_id | dns zone Id | `string` | `""` | no |
| image | node image name | `string` | `""` | no |
| location | node location | `string` | `""` | no |
| name | node name | `string` | `""` | no |
| network\_id | node network id | `string` | `""` | no |
| ssh\_key\_ids | SSH keys IDs | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| node\_ip | Server internal IPs |
| node\_public\_ip | Server external IP |
