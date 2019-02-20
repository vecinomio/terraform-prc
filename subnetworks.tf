resource "google_compute_subnetwork" "dev-subnet" {
  ip_cidr_range = "10.0.1.0/24"
  name          = "devsubnet"
  network       = "${google_compute_network.our_dev_net.name}"
}
