resource "google_compute_subnetwork" "dev-subnet" {
  ip_cidr_range = "${var.gcp_ip_cidr_range}"
  name          = "${var.subnets_names["subnet1"]}"
  network       = "${google_compute_network.our_dev_net.name}"
}
