provider "google" {
 project = var.project_id
 region = var.region
 }

module "vpc" {
 source = "./module/vpc"
 network_name = var.network_name
 region = var.region
 }

module "vm" {
 source = "./module/vm"
 zone = var.zone
 machine_type = var.machine_type
 vm_name = var.vm_name
 network_id = module.vpc.network_id
 }
 
