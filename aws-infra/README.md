### Files and Directories:
```plaintext
k3s-aws-api-deployment/
│
├── aws-infra/
│   ├── terraform/
│   │   ├── env/
│   │   │   ├── dev/
│   │   │   │   ├── main.tf              # Terraform configuration for the dev environment
│   │   │   │   ├── variables.tf         # Input variables for Terraform
│   │   │   │   ├── outputs.tf           # Outputs of the Terraform configuration
│   │   │   │   └── providers.tf         # Provider configurations
│   │   │   └── prod/                    # prod environments (if any)
│   │   │   └── stage/                   # stage environments (if any)
│   │   ├── blueprint/
│   │   │   ├── modules/
│   │   │   │   ├── vpc/main,variables,outputs              # VPC module
│   │   │   │   ├── subnet/main,variables,outputs            # Subnet module
│   │   │   │   ├── nat_gateway/main,variables,outputs        # NAT Gateway module
│   │   │   │   └── security_group/main,variables,outputs      # Security Group module
│   │   └──
│   └── README.md                             # aws-infra project documentation
│
├── README.md                             # Project documentation
```

### Prerequisites
- [Terraform](https://app.terraform.io/) Cloud account.
- AWS credentials configured in Terraform cloud variables.

### Steps to Deploy
- Open your project in VSCode.
- Ensure you have the Remote Containers extension installed.
- Reopen the project in the DevContainer.
- Configure your AWS credentials inside the DevContainer.
- Initialize and apply the Terraform configuration.

1. 
In https://app.terraform.io/ Create a Organization and Workspace for the project.
In our case Organization is zaman-iac and Workspace is k3s-aws-api-deployment
In zaman-iac/Workspaces/k3s-aws-api-deployment/Variables
On the left side Variables link we can setup AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY as Sensitive variables.
![alt Terraform Cloud aws credential setup](https://github.com/hasanashik/k3s-aws-api-deployment/blob/main/aws-infra/screenshots/0-variable-st-terraform-cloud.PNG?raw=true)

Clone this repository:
   ```bash
   git clone https://github.com/yourusername/k3s-aws-api-deployment.git
   ```
Open k3s-aws-api-deployment in vscode devcontainer. (**Need to install Docker desktop locally on your PC.)

2. Navigate to the desired environment folder:
```bash 
cd /workspaces/k3s-aws-api-deployment/aws-infra/terraform/env/dev
```
3. Login Terraform:
```bash
terraform login
```
![alt Terraform local login in devcontainer](https://github.com/hasanashik/k3s-aws-api-deployment/blob/main/aws-infra/screenshots/1-terraform%20login.png?raw=true)
By providing the access token which is generated from https://app.terraform.io/app/settings/tokens?source=terraform-login we have provided local container to access our terraform resources.
4. Initialize, fix script formation and Review the execution plan:
```bash
terraform init
terraform fmt -recursive
terraform plan
```
![alt Terraform Plan](https://github.com/hasanashik/k3s-aws-api-deployment/blob/main/aws-infra/screenshots/3-terraform%20plan.png?raw=true)

5. Apply the Terraform configuration
```bash
terraform apply
```
![alt Terraform Plan](https://github.com/hasanashik/k3s-aws-api-deployment/blob/main/aws-infra/screenshots/4-terraform-apply.PNG?raw=true)
![alt Terraform Plan](https://github.com/hasanashik/k3s-aws-api-deployment/blob/main/aws-infra/screenshots/4-terraform-apply-2.PNG?raw=true)


In our case we got
nat_gateway_id = "nat-0a1a50fc11ae8c47d"\
private_subnet_id = "subnet-0f77d7a495c138bd2"\
public_subnet_id = "subnet-0044a7741d8066ff3"\
security_group_id = "sg-0726d659a82181af7"\
vpc_id = "vpc-0d560dee502922be2"

Confirm that the infrastructure was created successfully in your AWS account.