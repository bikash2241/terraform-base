resource "aws_route_table" "devts_pub_rt" {
  vpc_id = aws_vpc.devtsvpc.id
}
 
resource "aws_route" "devts_pub_r" {
  route_table_id            = aws_route_table.devts_pub_rt.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.devts_pgw.id
  depends_on                = [aws_route_table.devts_pub_rt]
}