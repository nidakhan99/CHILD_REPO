variable "sg" {
  type        = string
  default = "ninja-sg"
  description = "security group name"
}
variable "sg_port" {
  type        = number
  default = 22
  description = "ssh port 22 for connection "
}

variable "sg_protocol" {
  type        = string
  default = "TCP"
  description = "TCP protocol for connection "
}


variable "sg_cidr" {
  type        = string
  default = "0.0.0.0/0"
  description = "source for connection"
}

variable "sg_id" {
  type        = list(string)
  default = ["aws_security_group.ninja-SG.id"]
  description = "source for connection"
}

variable "vpc_id" {
  type = string
  default = "xyx"
  description = "vpc id "
}
