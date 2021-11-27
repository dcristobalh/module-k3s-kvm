terraform {
required_version = ">= 0.13"

  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "~> 0.6.2"
    }
  }
}

provider "libvirt" {
  uri = "qemu://${var.server}/system"
}


resource "libvirt_pool" "pool" {
  name = "my_pool"
  type = "dir"
  path = var.pool_path
}

resource "libvirt_volume" "k3s_master" {
  name   = "k3s-master.raw"
  size   = var.master_volume_size
  format = "raw"
  pool   = libvirt_pool.pool.name
}