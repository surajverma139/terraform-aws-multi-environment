Terraform AWS Multi-Environment Infrastructure

A Terraform-based AWS infrastructure project demonstrating how to manage separate Development (Dev) and Production (Prod) environments using Terraform Workspaces, Variables, Data Blocks, and EC2 resources.

📌 Project Overview

The purpose of this project is to automate AWS infrastructure deployment using Terraform instead of manually creating resources through the AWS Console.

The project uses separate Terraform workspaces for Dev and Prod environments. Each environment has its own configuration and Terraform state.

🌱 Environments

Environment

EC2 Instance Type

Instance Count

Development

t3.micro

1

Production

t3.small

3

🏗️ Architecture

                    Terraform
                        |
              +---------+---------+
              |                   |
         Dev Workspace       Prod Workspace
              |                   |
          1 × t3.micro        3 × t3.small
              |                   |
              +---------+---------+
                        |
                     AWS EC2

🛠️ Technologies Used

Terraform

Amazon Web Services (AWS)

Amazon EC2

AWS VPC

AWS Subnets

AWS Availability Zones

Amazon Linux AMI

Git

GitHub

📂 Project Structure

terraform-mse/
│
├── main.tf
├── data.tf
├── variables.tf
├── terraform.tf
├── terraform.tfvars.dev
├── terraform.tfvars.prod
├── .terraform.lock.hcl
└── .gitignore

File Description

File

Purpose

main.tf

Defines the EC2 infrastructure

data.tf

Dynamically retrieves AWS VPC, subnets, availability zones, and AMI

variables.tf

Defines Terraform input variables

terraform.tf

Configures Terraform and the AWS provider

terraform.tfvars.dev

Configuration values for Dev

terraform.tfvars.prod

Configuration values for Prod

.terraform.lock.hcl

Locks provider dependency versions

.gitignore

Prevents Terraform state and working files from being committed

🔑 Terraform Concepts Demonstrated

1. Terraform Workspaces

The project uses separate workspaces for:

dev
prod

Each workspace maintains its own Terraform state.

2. Variables

The project uses variables for:

AWS region

Environment

EC2 instance type

Instance count

Project name

3. Data Blocks

The project dynamically retrieves existing AWS resources instead of hardcoding resource IDs.

Data sources include:

Default VPC

Subnets

Availability Zones

Amazon Linux AMI

4. EC2 Resources

The EC2 instance count and instance type are controlled through variables.

Dev:

1 × t3.micro

Prod:

3 × t3.small

5. Resource Tagging

EC2 instances are tagged with:

Name

Environment

Project

🚀 Terraform Workflow

Initialize the project:

terraform init

Format the configuration:

terraform fmt

Validate the configuration:

terraform validate

Preview changes:

terraform plan

Apply the infrastructure:

terraform apply

🌱 Dev Environment

Select the Dev workspace:

terraform workspace select dev

Create a Dev plan:

terraform plan -var-file="terraform.tfvars.dev"

Apply Dev infrastructure:

terraform apply -var-file="terraform.tfvars.dev"

🏭 Production Environment

Select the Prod workspace:

terraform workspace select prod

Create a Prod plan:

terraform plan -var-file="terraform.tfvars.prod"

Apply Prod infrastructure:

terraform apply -var-file="terraform.tfvars.prod"

🔍 Useful Commands

List workspaces:

terraform workspace list

Show the current workspace:

terraform workspace show

List resources in the current state:

terraform state list

Show Terraform state:

terraform show

Destroy infrastructure:

terraform destroy

🎯 Project Use Case

This project demonstrates how organizations can use Infrastructure as Code (IaC) to create consistent and repeatable AWS infrastructure.

Instead of manually creating EC2 instances through the AWS Console, Terraform defines the infrastructure as code and deploys it using commands.

The same Terraform configuration can support multiple environments with different configurations.

✅ Key Learning Outcomes

Understanding Infrastructure as Code

Using Terraform with AWS

Creating and managing Terraform workspaces

Using Terraform variables

Using .tfvars files

Using AWS data sources

Creating EC2 instances using Terraform

Managing Terraform state

Using Git and GitHub for version control

Separating Dev and Prod configurations

👨‍💻 Author

Suraj Verma

BTech – Information Technology

📄 License

This project is created for educational and learning purposes.
