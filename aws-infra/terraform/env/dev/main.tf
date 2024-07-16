// terraform/env/dev/main.tf
terraform {
  cloud {
    organization = "zaman-iac"

    workspaces {
      name = "k3s-aws-api-deployment"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.32.0"
    }
  }
  required_version = ">= 0.12"
}


module "vpc" {
  source     = "/workspaces/k3s-aws-api-deployment/aws-infra/terraform/blueprint/modules/vpc"
  cidr_block = var.cidr_block
}

module "public_subnet" {
  source                  = "/workspaces/k3s-aws-api-deployment/aws-infra/terraform/blueprint/modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true
}

module "private_subnet" {
  source                  = "/workspaces/k3s-aws-api-deployment/aws-infra/terraform/blueprint/modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = var.private_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = false
}

module "nat_gateway" {
  source           = "/workspaces/k3s-aws-api-deployment/aws-infra/terraform/blueprint/modules/nat_gateway"
  public_subnet_id = module.public_subnet.subnet_id
  allocation_id    = aws_eip.nat_eip.id
}

module "security_group" {
  source        = "/workspaces/k3s-aws-api-deployment/aws-infra/terraform/blueprint/modules/security_group"
  vpc_id        = module.vpc.vpc_id
  name_prefix   = var.sg_name_prefix
  description   = var.sg_description
  ingress_rules = var.sg_ingress_rules
  egress_rules  = var.sg_egress_rules
  tags          = var.tags
}

resource "aws_eip" "nat_eip" {
  domain = "vpc"
}

resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = module.public_subnet.subnet_id
  route_table_id = module.vpc.public_route_table_id
}

resource "aws_route_table_association" "private_subnet_association" {
  subnet_id      = module.private_subnet.subnet_id
  route_table_id = module.vpc.private_route_table_id
}

resource "aws_route" "private_subnet_route" {
  route_table_id         = module.vpc.private_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = module.nat_gateway.nat_gateway_id
}


