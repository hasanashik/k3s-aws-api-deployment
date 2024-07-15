// terraform/blueprint/modules/vpc/outputs.tf
output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_route_table_id" {
  value = aws_route_table.public.id
}

output "private_route_table_id" {
  value = aws_route_table.private.id
}
