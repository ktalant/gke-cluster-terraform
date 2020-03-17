resource "google_dns_managed_zone" "talant_dns" {
  name     = "spacextech"
  dns_name = "spacextech.net."
  project  = "${var.project}"
}