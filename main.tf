module "vpc" {
 source = "./module/vpc"
 network_name = var.network_name
 }

module "vm" {
 source = "./module/vm"
 zone = var.vm_config.zone
 machine_type = var.vm_config.machine_type
 vm_name = var.vm_config.vm_name

 network_id = module.vpc.network_id
 }
 
