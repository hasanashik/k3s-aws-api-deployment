// terraform/blueprint/modules/subnet/variables.tf
variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "Whether to map a public IP on launch"
  type        = bool
}
