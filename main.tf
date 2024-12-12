# Provider configuration for Google Cloud
provider "google" {
  project = var.project_id   
  region  = var.region       
  zone    = var.zone         
}

# Create a custom VPC for networking
resource "google_compute_network" "vpc" {
  name                    = "devops-vpc"         
  auto_create_subnetworks = false                
}

# Create a subnet for general workloads
resource "google_compute_subnetwork" "general" {
  name          = "general-subnet"              
  ip_cidr_range = "10.0.1.0/24"                 
  region        = var.region                    
  network       = google_compute_network.vpc.id 
}

# Create a subnet for CPU-intensive workloads
resource "google_compute_subnetwork" "cpu_intensive" {
  name          = "cpu-intensive-subnet"        
  ip_cidr_range = "10.0.2.0/24"                 
  region        = var.region                    
  network       = google_compute_network.vpc.id 
}

# Deploy a GKE cluster with two node pools
resource "google_container_cluster" "gke_cluster" {
  name     = "devops-gke-cluster"               
  location = var.region                         

  # Attach the cluster to the VPC and subnets
  network    = google_compute_network.vpc.id
  subnetwork = google_compute_subnetwork.general.id

  # General workload node pool
  node_pool {
    name       = "general-pool"                 
    node_count = 2                              

    node_config {
      machine_type = "e2-medium"                
    }
  }

  # CPU-intensive workload node pool
  node_pool {
    name       = "cpu-intensive-pool"           
    node_count = 2                             

    node_config {
      machine_type = "e2-highcpu-4"             
    }
  }
}

# Configure Terraform backend for storing state in a GCS bucket
terraform {
  backend "gcs" {
    bucket  = "terraform-state-bucket"          
    prefix  = "devops-assessment"               
  }
}
