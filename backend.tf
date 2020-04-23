terraform {
  backend "gcs" {
    bucket = "playground-s-11-87108b"
    prefix = "terraform"
    credentials = "key.json"
  }
}

provider "google" {
  credentials = "${file("key.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
