terraform {
  required_providers {
    serverspace = {
      source  = "itglobalcom/serverspace"
      version = ">= 0.3.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 4.20.0"
    }
  }
  required_version = ">= 1.3"
}
