terraform {
  backend "gcs" {
    bucket = "terraform-gke-talantzon"
    prefix = "terraform"
    credentials = "talantzon-account.json"
  }
}

provider "google" {
  credentials = "${file("talantzon-account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
