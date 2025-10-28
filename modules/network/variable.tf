variable "vm_name" {}
variable "resource_group_name" {}
variable "location" {}  
variable "allowed_ports" {
  type    = list(number)
  default = []
}

