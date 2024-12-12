# Terraform-Infrastructure-as-Code-IaC-

1st part - 4th question 

4. Explain how you would automate the process using TFActions.

Answer - To automate this deploying infrastructure using Terraform on GCP with github actions.You have to commit the terraform code to a github repo. Then You have to create a service account on GCP account with correct permission and add the requried credentials in github secrets section for autherntication. The define a  GitHub Actions workflow file with the steps to install,configure and run terraform.This triggered some changes are pushed to the repo.And workflow should authenticates with Google cloud, worked terraform and applies the changes automatically to the GKE cluster or any ect. This automation ensures that the infrastructure is always up-to-date with the code in your repository.
