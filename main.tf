module "vpc" {
 source = "./modules/vpc"
 network_name = var.network_name
 }

module "vm" {
 source = "./modules/vm"
 zone = var.vm_config.zone
 machine_type = var.vm_config.machine_type
 vm_name = var.vm_config.vm_name

 network_id = module.vpc.network_id
 }
 
