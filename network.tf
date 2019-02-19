resource "google_compute_network" "our_dev_net" {
  name = "devnet"
  auto_create_subnetworks = false
}
