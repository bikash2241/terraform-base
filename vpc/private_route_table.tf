resource "aws_route_table" "devts_pvt_rt" {
  vpc_id = aws_vpc.devtsvpc.id
}
 
resource "aws_route" "devts_pvt_r" {
  route_table_id            = aws_route_table.devts_pvt_rt.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_nat_gateway.devts_pvt_nat_gateway.id
  depends_on                = [aws_route_table.devts_pvt_rt]
}