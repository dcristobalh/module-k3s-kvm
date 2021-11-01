provider "libvirt" {
  uri = "qemu://${var.server}/system"
}