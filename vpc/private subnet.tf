resource "aws_subnet" "devts_pvt_subnet_1a" {
  vpc_id     = aws_vpc.devtsvpc.id
  cidr_block = var.vpc_pvt_cidr_1a
  availability_zone = var.pvt_sub_availability_zone_1a
   tags = {
    Name = var.project
  }
}

resource "aws_subnet" "devts_pvt_subnet_1b" {
  vpc_id     = aws_vpc.devtsvpc.id
  cidr_block = var.vpc_pvt_cidr_1b
  availability_zone = var.pvt_sub_availability_zone_1b
   tags = {
    Name = var.project
  }
}
resource "aws_route_table_association" "devts_pvt_sub_rta_1a" {
  subnet_id      = aws_subnet.devts_pvt_subnet_1a.id
  route_table_id = aws_route_table.devts_pvt_rt.id
}
resource "aws_route_table_association" "devts_pvt_sub_rta_1b" {
  subnet_id      = aws_subnet.devts_pvt_subnet_1b.id
  route_table_id = aws_route_table.devts_pvt_rt.id
}