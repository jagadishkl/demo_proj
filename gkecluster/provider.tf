provider "google" {
 credentials = "${file("./creds/serviceaccount.json")}"
 version = "~> 1.19"
 project = "${var.project_id}"
 region = "${var.region}"
}
