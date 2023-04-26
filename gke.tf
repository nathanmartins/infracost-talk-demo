resource "google_container_cluster" "primary" {
  name     = "first-bit-382718-gke"
  location = "us-east1"

  initial_node_count       = 3

  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name
}
