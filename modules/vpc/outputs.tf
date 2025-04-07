output "aws_public_subnet" {
  description = "List of Public subnet ID"
  value       = aws_subnet.public_subnet[*].id
}

output "vpc_id" {
  description = "VPC ID for created vpc"
  value       = aws_vpc.project.id
}

output "igw_id" {
  description = "Internet gateway ID"
  value       = aws_internet_gateway.project_igw.id
}

output "route_table_id" {
  description = "route table id"
  value       = aws_default_route_table.rt.id
}
