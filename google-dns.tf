resource "google_dns_managed_zone" "talant_dns" {
  name     = "hrczom"
  dns_name = "hrczom.com."
  project  = "${var.project}"
}