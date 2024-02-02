variable "pub_sub" {
  type = list(string)
  default = ["xyx","cvy"]
  description = "pub subnet ids "
}

variable "pir_sub" {
 type = list(string)
  default = ["xyx","cvy"]
  description = "private  subnet ids "
}




variable "type" {
  type        = string
  default = "t2.micro"
  description = "instance type"
}



variable "ec2_type" {
  type        = string
  default = "t2.micro"
  description = "instance type"
}



variable "bestion" {
  type        = string
  default = "bestion_host"
  description = "name for bestion host"
}

variable "pub_instance" {
  type        = string
  default = "public_instance"
  description = "name for private server"
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
  type        = string
  default = "xxx"
  description = "source for connection"
}

variable "vpc_id" {
  type = string
  default = "xyx"
  description = "vpc id "
}
