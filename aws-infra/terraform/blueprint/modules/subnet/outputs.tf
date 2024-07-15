// terraform/blueprint/modules/subnet/outputs.tf
output "subnet_id" {
  value = aws_subnet.this.id
}
