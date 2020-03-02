terraform {
  backend "gcs" {
    bucket = "talant-bucket21"
    prefix = "terraform"
    credentials = "uchkunfan-account.json"
  }
}

provider "google" {
  credentials = "${file("uchkunfan-account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
