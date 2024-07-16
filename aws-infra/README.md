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
- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- AWS credentials configured in Terraform cloud variables.

### Steps to Deploy
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/k3s-aws-api-deployment.git
   cd k3s-aws-api-deployment/aws-infra```
2. Navigate to the desired environment folder:
```bash 
cd env/dev ```  
3. Initialize Terraform:
```terraform init```  
4. Review the execution plan:
```terraform plan```  
5. Apply the Terraform configuration
```terraform apply```  
Confirm that the infrastructure was created successfully in your AWS account.