variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.20.0.0/16"
}

variable "environment" {
  type    = string
  default = "staging"
}

variable "ssh_cidr" {
  type    = string
  default = "0.0.0.0/0"
}
