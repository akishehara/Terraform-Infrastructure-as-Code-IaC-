# Define variables to make the configuration reusable and flexible

# GCP Project ID
variable "project_id" {
  description = "The GCP project ID where resources will be created"
  type        = string
  default     = "codimite-devops-assessment" # The actual project ID
}

# GCP Region
variable "region" {
  description = "The GCP region for deploying resources"
  type        = string
  default     = "asia-south1" # Region for Sri Lanka 
}

# GCP Zone
variable "zone" {
  description = "The GCP zone for deploying resources"
  type        = string
  default     = "asia-south1-a" # Zone for Sri Lanka 
}
