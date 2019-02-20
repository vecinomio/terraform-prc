resource "google_container_cluster" "kuby" {
  name               = "kubycluster"
  zone               = "europe-west3-c"
  initial_node_count = "1"

  additional_zones = [
    "europe-west3-a",
  ]

  master_auth {
    password = "a_very_long_password"
    username = "username"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels {
      this-is-for = "dev-cluster"
    }

    tags = ["dev", "work"]
  }
}
