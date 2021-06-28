output "vpc_id" {
  value = aws_vpc.devtsvpc.id
}

output "devts_pub_subnet_1a" {
  value = aws_subnet.devts_pub_subnet_1a.id
}
output "devts_pub_subnet_1b" {
  value = aws_subnet.devts_pub_subnet_1b.id
}
output "devts_pvt_subnet_1a" {
  value = aws_subnet.devts_pvt_subnet_1a.id
}
output "devts_pvt_subnet_1b" {
  value = aws_subnet.devts_pvt_subnet_1b.id
}