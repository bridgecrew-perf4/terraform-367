terraform {
  required_version = "~> 0.14.0"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 2.14.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
