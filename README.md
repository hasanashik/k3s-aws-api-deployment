# k3s-aws-api-deployment
This project will consist of 6 tasks:

## 1. AWS Infrastructure Setup
a) Create a directory named `aws-infra` in your repository.
b) Write Terraform or CloudFormation code to provision:
   - A VPC with both public and private subnets
   - A NAT Gateway in the public subnet
   - Necessary security groups
c) Include a `README.md` with instructions on how to apply the infrastructure code.

## 2. K3s Cluster Deployment
a) Create a directory named `k3s-setup` in your repository.
b) Write Ansible playbooks or shell scripts to:
   - Launch EC2 instances in the private subnet (1 server and 2 agent nodes)
   - Install and configure k3s on the instances
c) Include a `README.md` with instructions on how to run the deployment scripts.

## 3. Python REST API Development
a) Create a directory named `api` in your repository.
b) Write a simple Python REST API using a framework of your choice (e.g., Flask, FastAPI).
c) Include at least two endpoints: a GET endpoint returning a "Hello, World!" message and a POST endpoint accepting and returning JSON data.
d) Write a Dockerfile to containerize the API.
e) Include a `README.md` with instructions on how to build and run the API locally.

## 4. Kubernetes Deployment
a) Create a directory named `k8s` in your repository.
b) Write Kubernetes manifests for:
   - A Deployment for your Python API
   - A Service to expose the API within the cluster
c) Include a `README.md` with instructions on how to apply the Kubernetes manifests.

## 5. NGINX Load Balancer Setup
a) Create a directory named `nginx` in your repository.
b) Write an NGINX configuration file to route traffic to the Kubernetes Service.
c) Include a `README.md` with instructions on how to deploy and configure NGINX.

## 6. CI/CD Pipeline
a) Set up GitHub Actions to:
   - Run tests on the Python API when changes are pushed
   - Build and push the Docker image to a container registry (e.g., Docker)
   - Update the Kubernetes deployment when changes are merged to the main branch
b) Include the GitHub Actions workflow file in the repository root.
 

## Project Structure

k3s-aws-api-deployment/\
│\
├── aws-infra/\
│ ├── env/\
│ │ ├── dev/\
│ │ ├── prod/\
│ │ └── stage/\
│ ├── blueprint/\
│ │ └── modules/\
│ │ └├── vpc/\
│ │ └├── public_subnet/\
│ │ └├── private_subnet/\
│ │ └└── nat_gateway/\
│ ├── main.tf\
│ └── variables.tf\
│\
└── README.md

### Directory Breakdown
- `aws-infra/`: Contains all infrastructure-related files.
  - `env/`: Environment-specific configurations for different stages (dev, prod, stage).
  - `blueprint/`: Modular Terraform configurations for VPC, public and private subnets, and NAT Gateway.
  - `main.tf`: Main Terraform configuration file that ties everything together.
  - `variables.tf`: Defines variables used in the Terraform configuration.

## AWS Infrastructure Setup

### Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- AWS credentials configured in your environment.

### Steps to Deploy
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/k3s-aws-api-deployment.git
   cd k3s-aws-api-deployment/aws-infra
Navigate to the desired environment folder:
cd env/dev   
Initialize Terraform:
terraform init
Review the execution plan:
terraform plan
Apply the Terraform configuration
terraform apply
Confirm that the infrastructure was created successfully in your AWS account.
