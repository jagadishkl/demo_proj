resource "google_container_cluster" "gke-cluster" {
 name = "${var.cluster_name}"
 network = "default"
 zone = "${var.region}"
 initial_node_count = "${var.gcp_node_count}"
 
 master_auth {
  username = "${var.username}"
  password = "${var.password}"
 }
 
 node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
	
	labels {
      this-is-for = "dev-cluster"
    }

    tags = ["dev", "work"]
 }
}
