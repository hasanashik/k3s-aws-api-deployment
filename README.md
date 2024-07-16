# k3s-aws-api-deployment
This project consists of six main tasks:
1. AWS Infrastructure Setup
2. K3s Cluster Deployment
3. Python REST API Development
4. Kubernetes Deployment
5. NGINX Load Balancer Setup
6. CI/CD Pipeline

## 1. AWS Infrastructure Setup
To set up the AWS infrastructure, follow these steps:

### Target:
1. Create a directory named `aws-infra` in the repository.
2. Write Terraform code to provision the following resources:
   - A VPC with both public and private subnets.
   - A NAT Gateway in the public subnet.
   - Necessary security groups.

### Files and Directories:
- `aws-infra/`
  - `env/`
    - `dev/`
    - `prod/`
    - `stage/`
  - `blueprint/`
    - `modules/`
      - `vpc/`
      - `public_subnet/`
      - `private_subnet/`
      - `nat_gateway/`
  - `main.tf`
  - `variables.tf`

### Instructions:
- See the `README.md` file in the `aws-infra` directory for detailed instructions on how to apply the infrastructure code.

## 2. K3s Cluster Deployment
To deploy a K3s cluster, follow these steps:

### Target:
1. Create a directory named `k3s-setup` in the repository.
2. Write Ansible playbooks or shell scripts to:
   - Launch EC2 instances in the private subnet (1 server and 2 agent nodes).
   - Install and configure K3s on the instances.

### Files and Directories:
- `k3s-setup/`
  - `playbooks/`
  - `scripts/`
  - `README.md`

### Instructions:
- See the `README.md` file in the `k3s-setup` directory for detailed instructions on how to run the deployment scripts.

## 3. Python REST API Development
To develop a Python REST API, follow these steps:

### Target:
1. Create a directory named `api` in the repository.
2. Write a simple Python REST API using a framework of your choice (e.g., Flask, FastAPI).
3. Include at least two endpoints:
   - A GET endpoint returning a "Hello, World!" message.
   - A POST endpoint accepting and returning JSON data.
4. Write a Dockerfile to containerize the API.

### Files and Directories:
- `api/`
  - `app/`
  - `Dockerfile`
  - `README.md`

### Instructions:
- See the `README.md` file in the `api` directory for detailed instructions on how to build and run the API locally.

## 4. Kubernetes Deployment
To deploy the API to Kubernetes, follow these steps:

### Target:
1. Create a directory named `k8s` in the repository.
2. Write Kubernetes manifests for:
   - A Deployment for your Python API.
   - A Service to expose the API within the cluster.

### Files and Directories:
- `k8s/`
  - `manifests/`
  - `README.md`

### Instructions:
- See the `README.md` file in the `k8s` directory for detailed instructions on how to apply the Kubernetes manifests.

## 5. NGINX Load Balancer Setup
To set up an NGINX load balancer, follow these steps:

### Target:
1. Create a directory named `nginx` in the repository.
2. Write an NGINX configuration file to route traffic to the Kubernetes Service.

### Files and Directories:
- `nginx/`
  - `nginx.conf`
  - `README.md`

### Instructions:
- See the `README.md` file in the `nginx` directory for detailed instructions on how to deploy and configure NGINX.

## 6. CI/CD Pipeline
To set up a CI/CD pipeline using GitHub Actions, follow these steps:

### Target:
1. Set up GitHub Actions to:
   - Run tests on the Python API when changes are pushed.
   - Build and push the Docker image to a container registry (e.g., Docker Hub).
   - Update the Kubernetes deployment when changes are merged to the main branch.

### Files and Directories:
- `.github/`
  - `workflows/`
    - `ci-cd.yml`

### Instructions:
- The GitHub Actions workflow file is included in the repository root. Follow the instructions in the file to set up and run the CI/CD pipeline.

 

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
