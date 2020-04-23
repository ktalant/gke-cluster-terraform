resource "google_dns_managed_zone" "talant_dns" {
  name     = "talant"
  dns_name = "talant-bek1.net."
  project  = "${var.project}"
}
