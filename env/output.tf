output "resource_group" {
  value = module.rg.resource_group_name
}

output "vm_id" {
  value = module.vm.vm_id
}

output "public_ip" {
  value = module.network.public_ip
}

output "nsg_id" {
  value = module.network.nsg_id
}
