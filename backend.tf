terraform {
  backend "gcs" {
    bucket = "talant-la-bucket-1223"
    prefix = "terraform"
    credentials = "talant-account.json"
  }
}

provider "google" {
  credentials = "${file("talant-account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
