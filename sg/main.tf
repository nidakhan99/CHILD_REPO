#############################[ SECURITY GROUP  ]################################################ 
resource "aws_security_group" "ninja_SG" {
  name        = var.sg
  vpc_id      = var.vpc_id
  ingress {
    from_port   = var.sg_port
    to_port     = var.sg_port
    protocol    = var.sg_protocol
    cidr_blocks = [var.sg_cidr]
  }

  tags = {
    Name = var.sg
  }
}
