provider "google" {
  credentials = "${file("../account.json")}"
  project = "terraform-trainee"
  region = "europe-west3-c"
}
