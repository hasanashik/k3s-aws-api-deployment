// terraform/blueprint/modules/nat_gateway/outputs.tf
output "nat_gateway_id" {
  value = aws_nat_gateway.this.id
}
