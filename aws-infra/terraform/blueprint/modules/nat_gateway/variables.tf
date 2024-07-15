// terraform/blueprint/modules/nat_gateway/variables.tf
variable "allocation_id" {
  description = "The allocation ID of the Elastic IP address"
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet"
  type        = string
}
