terraform {
  backend "gcs" {
    bucket = "terraform-gke-talantzon"
    prefix = "terraform"
    credentials = "~/../talantzon-44a081325437.json"
  }
}

provider "google" {
  credentials = "${file("~/../talantzon-44a081325437.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
