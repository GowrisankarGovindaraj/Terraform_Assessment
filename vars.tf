
variable "public_key" {
  default = "tests.pub"
}

variable "private_key" {
  default = "tests.pem"
}

variable "key_name" {
 default = "tests"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet1_cidr" {
  default = "10.0.2.0/24"
}

variable "subnet3_cidr" {
  default = "10.0.3.0/24"
}

variable "subnet4_cidr" {
  default = "10.0.4.0/24"
}

variable "region" {
  default = "ap-south-1"
}

variable "az_1" {
  default = "ap-south-1a"
}

variable "az_2" {
  default = "ap-south-1b"
}