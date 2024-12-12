# Outputs to display key information after deployment

# GKE Cluster Endpoint
output "gke_endpoint" {
  value       = google_container_cluster.gke_cluster.endpoint
  description = "The endpoint for the GKE cluster"
}

# Name of the general workload node pool
output "general_pool_name" {
  value       = google_container_cluster.gke_cluster.node_pool[0].name
  description = "Name of the general workload node pool"
}

# Name of the CPU-intensive workload node pool
output "cpu_intensive_pool_name" {
  value       = google_container_cluster.gke_cluster.node_pool[1].name
  description = "Name of the CPU-intensive workload node pool"
}
