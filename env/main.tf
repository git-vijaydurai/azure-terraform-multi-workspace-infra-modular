module "rg" {
  source              = "../modules/rg"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "network" {
  source              = "../modules/network"
  resource_group_name = module.rg.resource_group_name
  location            = module.rg.resource_group_location
  vm_name             = var.vm_name
  allowed_ports       = var.allowed_ports
}

module "vm" {
  source              = "../modules/vm"
  resource_group_name = module.rg.resource_group_name
  location            = module.rg.resource_group_location
  nic_id              = module.network.nic_id
  availability_zone   = var.availability_zone
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  os_type             = var.os_type
  os_disk_size_gb     = var.os_disk_size_gb
  key_name            = var.key_name
}
