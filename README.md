# k3s-aws-api-deployment

This repository provides infrastructure code for deploying a K3s cluster on AWS using Terraform. The infrastructure includes a VPC with both public and private subnets, a NAT Gateway in the public subnet, and the necessary security groups.

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
│ │ ├── vpc/\
│ │ ├── public_subnet/\
│ │ ├── private_subnet/\
│ │ └── nat_gateway/\
│ ├── main.tf\
│ └── variables.tf\
│\
└── README.md\

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
