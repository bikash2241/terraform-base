resource "aws_internet_gateway" "devts_pgw" {
  vpc_id = aws_vpc.devtsvpc.id

  tags = {
    Name = var.project
  }
}
