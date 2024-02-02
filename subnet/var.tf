variable "cidr_pub" {
   type = list(string)
   default = ["10.0.2.0/28","10.0.4.0/28"]
   description = "cidr for public subnets"

}


variable "cidr_pir" {
   type = list(string)
   default = ["10.0.6.0/28","10.0.8.0/28"]
   description = "cidr range for private subnets"
}

variable "pub_az" {
   type = list(string)
   default = ["us-east-1a","us-east-1b"]
   description = "availability zone for public subnet"
}

variable "pir_az" {
   type = list(string)
   default = ["us-east-1a","us-east-1b"]
   description = "availability zone for private subnet"
}

variable "vpc_id" {
  type = string
  default = "xyx"
  description = "vpc id "
}
 


