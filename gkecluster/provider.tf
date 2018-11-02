provider "google" {
 credentials = "${file("./creds/demoproject.json")}"
 version = "~> 1.19"
 project = "${var.project_id}"
 region = "${var.region}"
}
