resource "google_dns_managed_zone" "talant_dns" {
  name     = "talantzon"
  dns_name = "talantzon.com."
  project  = "${var.google_project_id}"
}