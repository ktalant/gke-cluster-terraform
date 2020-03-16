terraform {
  backend "gcs" {
    bucket = "talant-bucket1234"
    prefix = "terraform"
    credentials = "talant-account.json"
  }
}

provider "google" {
  credentials = "${file("talant-account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
