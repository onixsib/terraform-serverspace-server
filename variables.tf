variable "dns_prefix" {
  type        = string
  default     = "k3s"
  description = "dns prefix"
}

variable "dns_zone" {
  type        = string
  default     = "sibns.ru"
  description = "dns zone"
}

variable "dns_zone_id" {
  type        = string
  default     = ""
  description = "dns zone Id"
}

variable "dns_name" {
  type        = string
  default     = ""
  description = "dns name"
}

variable "ssh_key_ids" {
  type        = list(string)
  default     = []
  description = "SSH keys IDs"
}

variable "name" {
  type        = string
  default     = ""
  description = "node name"
}

variable "image" {
  type        = string
  default     = ""
  description = "node image name"
}

variable "network_id" {
  type        = string
  default     = ""
  description = "node network id"
}

variable "location" {
  type        = string
  default     = ""
  description = "node location"
}

