resource "google_dns_managed_zone" "talant_dns" {
  name     = "hrc1zom"
  dns_name = "hrc1zom.com."
  project  = "${var.project}"
}