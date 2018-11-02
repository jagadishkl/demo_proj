variable "project_id" {
	description = "Project ID in GCP"
}

variable "region" {
 description = "Region in which to manage GCP resources"
}

variable "username" {
 type = "string"
 description = "User name for authentication to the Kubernetes linux agent virtual machines in the cluster."
}

variable "password" {
 type = "string"
 description = "The password for the Linux admin account."
}

// GCP Variables

variable "gcp_node_count" {
 type = "string"
 description = "count of initial cluster node"
}

variable "cluster_name" {
 type = "string"
 description = "cluster name for the GCP cluster"
}

// GCP Output

output "gcp_cluster_endpoint" {
 value = "${google_container_cluster.gke-cluster.endpoint}"
}

output "gcp_ssh_command" {
 value = "ssh ${var.username}@${google_container_cluster.gke-cluster.endpoint}"
}

output "gcp_cluster_name" {
 value = "${google_container_cluster.gke-cluster.name}"
}
