output "tags" {
  description = "Instance tags"
  value       = aws_instance.ubuntu[0].tags
}

output "private_addresses" {
  description = "Private DNS for AWS instance"
  value = aws_instance.ubuntu[*].private_dns
}