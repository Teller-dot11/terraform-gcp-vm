provider "google" {
 project = var.project_id
 region = var.region
 }

module "vpc" {
 source = "./module/vpc"
 project_id = var.project_id
 region = var.region
 }

module "vm" {
 source = "./module/vm"
 project_id = var.project_id
 zone = var.zone
 vm_name = var.vm_name
 subnet_id = module.vpc.subnet_id
 }
 
