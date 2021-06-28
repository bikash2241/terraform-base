
# VPC creation
resource "aws_vpc" "devtsvpc" {
  instance_tenancy = var.instance_tenancy
  cidr_block       = var.vpc_cidr

  tags = {
    Name = var.project
  }
}
