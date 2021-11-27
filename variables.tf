variable "server" {
    description = "IP or name server of kvm host"
    type        = string
    default     = "127.0.0.1"
}

variable "pool_path" {
    description = "Path of the disks pool"
    type        = string
    default     = "/var/lib/libvirt/images"
}

variable "master_volume_size" {
    description = "Volume size of master node"
    type        = string
}