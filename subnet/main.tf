resource "aws_subnet" "pubsubnets" {
  vpc_id     = var.vpc_id
  count = length(var.cidr_pub)
  availability_zone = var.pub_az[count.index]
  cidr_block = var.cidr_pub[count.index]

  
  tags = {
    Name = "ninja-pub-sub-${count.index}"
  }
}

 resource "aws_subnet" "pirsubnets" {
  vpc_id     = var.vpc_id
  count = length(var.cidr_pir)
  availability_zone = var.pir_az[count.index]
  cidr_block = var.cidr_pir[count.index]

  
  tags = {
    Name = "ninja-priv-sub-${count.index}"
  }
}