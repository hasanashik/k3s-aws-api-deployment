# k3s-aws-api-deployment
This project consists of six main tasks:
1. AWS Infrastructure Setup
2. K3s Cluster Deployment
3. Python REST API Development
4. Kubernetes Deployment
5. NGINX Load Balancer Setup
6. CI/CD Pipeline


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


## 1. AWS Infrastructure Setup

### Target:
1. Create a directory named `aws-infra` in the repository.
2. Write Terraform code to provision the following resources:
   - A VPC with both public and private subnets.
   - A NAT Gateway in the public subnet.
   - Necessary security groups.

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
  - `screenshots`
  - `ssh-key`
  - `install_k3s.yml` : Install k3s on EC2 instances 
  - `inventory.ini` : Auto generated inventory file containing generated EC2 instances public ip and ssh key file
  - `launch_instances.yml` : Deploys EC2 instances on the AWS VPC 
  - `README.md`

### Instructions:
- See the `README.md` file in the `k3s-setup` directory for detailed instructions on how to run the deployment scripts.

