# VPC
resource "google_compute_network" "vpc" {
  name                    = "first-bit-382718-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "first-bit-382718-subnet"
  region        = "us-east1"
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}