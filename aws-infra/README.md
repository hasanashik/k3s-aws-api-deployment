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

### Prerequisites
- [Terraform](https://app.terraform.io/) Cloud account.
- AWS credentials configured in Terraform cloud variables.

### Steps to Deploy
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
```terraform login
```
![alt Terraform local login in devcontainer](https://github.com/hasanashik/k3s-aws-api-deployment/blob/main/aws-infra/screenshots/1-terraform%20login.png?raw=true)
By providing the access token which is generated from https://app.terraform.io/app/settings/tokens?source=terraform-login we have provided local container to access our terraform resources.
4. Initialize, fix script formation and Review the execution plan:
```
terraform init
terraform fmt -recursive
terraform plan
```
5. Apply the Terraform configuration
```terraform apply
```
Confirm that the infrastructure was created successfully in your AWS account.