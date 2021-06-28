
resource "aws_subnet" "devts_pub_subnet_1a" {
  vpc_id     = aws_vpc.devtsvpc.id
  cidr_block = var.vpc_pub_cidr_1a
  availability_zone = var.pub_sub_availability_zone_1a
   tags = {
    Name = var.project
  }
}

resource "aws_subnet" "devts_pub_subnet_1b" {
  vpc_id     = aws_vpc.devtsvpc.id
  cidr_block = var.vpc_pub_cidr_1b
  availability_zone = var.pub_sub_availability_zone_1b
   tags = {
    Name = var.project
  }
}
resource "aws_route_table_association" "devts_pub_sub_rta-1a" {
  subnet_id  = aws_subnet.devts_pub_subnet_1a.id
  route_table_id = aws_route_table.devts_pub_rt.id
}
resource "aws_route_table_association" "devts_pub_sub_rta-1b" {
  subnet_id  = aws_subnet.devts_pub_subnet_1b.id
  route_table_id = aws_route_table.devts_pub_rt.id
}

resource "aws_eip" "devts_eip" {
  vpc      = true
}
resource "aws_nat_gateway" "devts_pvt_nat_gateway" {
allocation_id = aws_eip.devts_eip.id
subnet_id     = aws_subnet.devts_pub_subnet_1a.id
  }