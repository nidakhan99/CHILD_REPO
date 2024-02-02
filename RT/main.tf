resource "aws_route_table" "route-table" {
   vpc_id = var.vpc_id
   route {
     cidr_block = var.rt_ip
     gateway_id = var.igw
   }
   tags = {
     Name = var.rt_name
   }
 }


resource "aws_route_table_association" "connection-RT-subnet" {
  count = 2
  subnet_id      = var.pub_sub[count.index]
  route_table_id = aws_route_table.route-table.id
}

resource "aws_route_table" "pir-route-table" {
   vpc_id = var.vpc_id
   count=1
    route {
     cidr_block = var.pvt_rt_ip
     nat_gateway_id = var.nat_gate
  
   }
   tags = {
     Name = var.pir-rt-name
   }
   
 }

resource "aws_route_table_association" "connection-RT-pir-subnet" {
  count=2
  subnet_id         = var.pir_sub[count.index]

  route_table_id = aws_route_table.pir-route-table[0].id
}
