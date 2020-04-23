terraform {
  backend "gcs" {
    bucket = "talant-bucket12"
    prefix = "terraform"
    credentials = "key.json"
  }
}

provider "google" {
  credentials = "${file("key.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
