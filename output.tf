
output "vpc_id" {
  value = aws_vpc.three_tier_archi.id
}

output "pub_sn_id" {
  value = aws_subnet.public_subnet[*].id
}

output "private_sn_id" {
  value = aws_subnet.private_subnet[*].id
}

output "database_sn_id" {
  value = aws_subnet.database_subnet[*].id
}