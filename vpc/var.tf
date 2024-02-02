variable "vpc-cidr" {
  type        = string
  default = "10.0.0.0/16"
  description = "cidr range for VPC network"
}



variable "vpc-name" {
  type        = string
  default = "ninja-vpc-01"
  description = "vpc name "
}