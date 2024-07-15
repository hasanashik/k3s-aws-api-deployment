// terraform/blueprint/modules/nat_gateway/main.tf
resource "aws_nat_gateway" "this" {
  allocation_id = var.allocation_id
  subnet_id     = var.public_subnet_id

  tags = {
    Name = "main-nat-gateway"
  }
}
