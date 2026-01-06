variable "project_id" {
 type = string
 description = "GCP project ID"
 default = "assesment-1-483410"
}
variable "region" {
  type = string
  default = "us-central1"
}
/*
variable "vm_config" {
  type = object({
    name = string
    machine_type = string
    zone = string
 })
}
*/
variable "vpc_network" {
  type = string
  default = "demo-vpc"
}
variable "vm_name" {
  type = string
  default = "demo-vm"
}
variable "zone" {
  type = string
  default = "us-central1-a"
}
