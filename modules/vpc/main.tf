resource "google_compute_network" "vpc" {
  name = "var.vpc-name"
  auto_create_subnetworks = false
 }

resource "google_compute_subnetwork" "subnet" {
  name = "demo-subnet"
  region = var.region
  network = google_compute_network.vpc.id
  ip_cidr_range = "10.0.0.0/24"
  }
