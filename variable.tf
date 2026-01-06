variable "project_id" {
 type = string
description = "GCP project ID"
}
variable "region" {
  type = string
  default = "us-central1"
}
variable "vm_config" {
  type = object({
    name = string
    machine_type = string
    zone = string
 })
}
variable "vm_name" {
  type = string
  default = "demo-vm"
}
variable "network_name" {
  type = string
}
