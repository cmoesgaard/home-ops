terraform {
  required_providers {
    sops = {
      source  = "carlpett/sops"
      version = "~> 0.5"
    }
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.33.2"
    }
  }
}

data "sops_file" "hetzner-secret" {
  source_file = "hetzner.enc.yaml"
}

provider "hcloud" {
  token = data.sops_file.hetzner-secret.data.api_token
}

resource "hcloud_server" "niflheim" {
  name               = "niflheim"
  image              = "ubuntu-22.04"
  server_type        = "cx31"
  delete_protection  = true
  rebuild_protection = true
}
