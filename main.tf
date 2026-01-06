module "vpc" {
 source = "./modules/vpc"
 network_name = var.vpc_network
 region = var.region
 }

module "vm" {
 source = "./modules/vm"
 zone = var.zone
 vm_name = var.vm_name

 network_id = module.vpc.network_id
 subnet_id = module.vpc.subnet_id
 }
 
