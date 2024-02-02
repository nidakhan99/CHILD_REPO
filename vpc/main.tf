resource "aws_vpc" "my_vpc" {
  cidr_block       = var.vpc-cidr

  tags = {
    Name = var.vpc-name
  }
}
