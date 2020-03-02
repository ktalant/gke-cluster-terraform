terraform {
  backend "gcs" {
    bucket = "talant-bucket1"
    prefix = "terraform"
    credentials = "talant-account.json"
  }
}

provider "google" {
  credentials = "${file("`pwd`/../talant-account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
