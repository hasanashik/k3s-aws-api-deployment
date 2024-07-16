// terraform/env/dev/variables.tf
variable "region" {
  description = "AWS region"
  default     = "ap-southeast-1"

}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the subnets"
  default     = "ap-southeast-1a"
}

variable "AWS_ACCESS_KEY_ID" {
  description = "AWS Access Key ID"
  type        = string
  sensitive   = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS Secret Access Key"
  type        = string
  sensitive   = true
}

variable "AWS_DEFAULT_REGION" {
  description = "AWS Region"
  type        = string
  default     = "ap-southeast-1"
}

variable "sg_name_prefix" {
  description = "Prefix for the security group name"
  type        = string
}

variable "sg_description" {
  description = "Description for the security group"
  type        = string
  default     = "Security group managed by Terraform"
}

variable "sg_ingress_rules" {
  description = "A list of ingress rules for the security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "sg_egress_rules" {
  description = "A list of egress rules for the security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
