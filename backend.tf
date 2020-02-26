terraform {
  backend "gcs" {
    bucket = "talant-la-bucket"
    prefix = "terraform"
    credentials = "playground-s-11-account.json"
  }
}

provider "google" {
  credentials = "${file("playground-s-11-account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
