resource "google_compute_network" "vpc" {
  name = "var.network_name"
  auto_create_subnetworks = true
 }

resource "google_compute_subnetwork" "subnet" {
  name = "demo-subnet"
  region = var.region
  network = google_compute_network.vpc.id
  ip_cidr_range = "10.0.0.0/24"
  }
