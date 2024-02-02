variable "nat_type" {
  type        = string
  default = "public"
  description = "connectivity type for nat gateway"
}

variable "nat-name" {
  type        = string
  default = "ninja-nat-01"
  description = "name for nat gateway"
}

variable "pub_sub" {
  type = string
  default = "xyx"
  description = "vpc id "
}

variable "pir_sub" {
  type = string
  default = "xyx"
  description = "vpc id "
}
