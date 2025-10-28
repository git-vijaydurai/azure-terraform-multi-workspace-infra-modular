variable "resource_group_name" {}
variable "location" {
  default = "East US 2"
}
variable "availability_zone" {
  default = "3"
}
variable "vm_name" {}
variable "vm_size" {
  default = ""
}
variable "admin_username" {}
variable "os_type" {
  default = "UbuntuServer"
}
variable "os_disk_size_gb" {
  default = 30
}
variable "allowed_ports" {
  type    = list(number)
  default = [22, 80, 443]
}
variable "subscription_id" {}

variable "key_name" {
  default = "akey"  
}