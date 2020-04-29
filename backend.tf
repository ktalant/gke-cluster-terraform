terraform {
  backend "gcs" {
    bucket = "talantbek"
    prefix = "terraform"
    credentials = "key.json"
  }
}

provider "google" {
  credentials = file("key.json")
  project     = var.project
  region      = var.region
}
