# module-k3s-kvm

![architecture](./Documents/cicd-architecture-plan.jpg)<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_libvirt"></a> [libvirt](#requirement\_libvirt) | ~> 0.6.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_libvirt"></a> [libvirt](#provider\_libvirt) | 0.6.11 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [libvirt_pool.pool](https://registry.terraform.io/providers/dmacvicar/libvirt/latest/docs/resources/pool) | resource |
| [libvirt_volume.k3s_master](https://registry.terraform.io/providers/dmacvicar/libvirt/latest/docs/resources/volume) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_master_volume_size"></a> [master\_volume\_size](#input\_master\_volume\_size) | Volume size of master node | `string` | n/a | yes |
| <a name="input_pool_path"></a> [pool\_path](#input\_pool\_path) | Path of the disks pool | `string` | `"/var/lib/libvirt/images"` | no |
| <a name="input_server"></a> [server](#input\_server) | IP or name server of kvm host | `string` | `"127.0.0.1"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
