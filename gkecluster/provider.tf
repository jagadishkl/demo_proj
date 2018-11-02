provider "google" {
 credentials = "${file("./creds/demo_service.json")}"
 version = "~> 1.19"
 project = "${var.project_id}"
 region = "${var.region}"
}
