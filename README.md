# Terraform-Infrastructure-as-Code-IaC-

1/5 Part -

1,2,3 questions - Answer - In code 

4th question 
4. Explain how you would automate the process using TFActions.

Answer - To automate this deploying infrastructure using Terraform on GCP with github actions.We have to commit the terraform code to a github repo. Then You have to create a service account on GCP account with correct permission and add the requried credentials in github secrets section for autherntication. The define a  GitHub Actions workflow file with the steps to install,configure and terraform.This triggered some changes are pushed to the repo.And workflow should authenticate with Google cloud, worked terraform and apply the changes automatically to the GKE cluster or any ect. This automation ensures that the infrastructure is always up-to-date with the code in your repository.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
GCP Concepts & Networking

2/5 Part -

1st question - answer - ![design](https://github.com/user-attachments/assets/7701ea3a-7326-4c6d-9511-f0ec8d661312)


2nd question

Write a brief summary explaining:

● How you would secure the setup.

* IAM Role based access control -  Ensure that only authorized users and service accounts have access to specific resources
* Firewalls - Can implement the firewall with correct inbound and outbound traffic to services with each subnet
* Set private IPs for the services to prevent the public access
* Encryption for all sensitive data


● How you would optimize costs while maintaining high availability.

* Use Autoscaling - By horizontal pod autoscaling cluster automatically scales base on the traffic demand. By using this we can reduce costs during low-traffic periods
* Choose the appropriate tier for Redis, depending on your performance needs and adjust based on usage patterns.
* Use auto storage increase for CloudSQL, so you don’t have to manually manage storage and liable costs from over-provisioning
* Set up  alerts for the required budget to ensure that the estimated costs do not exceed

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

GCP Concepts & Networking

3/5 Part - 

1,2,3 questions - Answer - https://github.com/akishehara/demo-project.git

4th question - 

Explain how you configure the deployment through ArgoCD.

* First, I installed argocd on the Kubernetes cluster by applying the installation manifests. Then, I connected the git repo that got the K8s manifest to argcd, after that, specifying where the application should be deployed. Then, I synced it with the cluster to deploy the microservice.  

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Security & Automation Guardrails

4/5 Part - 

1. Write a sample Conftest policy that ensures all Terraform code includes encryption for
GCS buckets and restrict the project

* -

2. Write a Trivy command to scan a Docker image during a GitHub Actions pipeline.

* trivy image --exit-code 1 --severity HIGH lobby-image:latest

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Problem-Solving & Troubleshooting Scenario

5/5 Part - 

1. Explain your approach to troubleshooting the issue.

* Initially has to identify the affected user part of the relevant service. Then have to collect the available pod logs, and data and start the analysis for the root cause of the issue. If possible walk through the the monitoring tools history also for a clear understanding.Then try to replicate it in a separate environment for a clear understanding. 

2. Describe tools and steps you would use to resolve the network timeout and prevent
future occurrences.

to prevent future occurrences - * Can implement an Alerting system (For timeouts, latencies, and failed authentication attempts).Can use tools like Prometheus for that.
* Can optimize configuration to be more efficient (connection pooling)
* Use network peering for low-latency communication between servicers
* Can conduct Performance testing, load testing to improve the qulity 

