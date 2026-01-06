resource "google_compute_instance" "this" {
 name = var.vm_name
 machine_type = "e2.medium"
 zone = var.zone

 boot_disk {
  initialize_params {
   image = "debians-cloud/debian-12"
   }
  }
  
 network_interface {
  network = var.network_id
  subnetwork = var.subnet_id
  }
}
