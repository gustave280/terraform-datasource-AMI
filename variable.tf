variable "region" {
  type    = string
  default = "us-east-1"

}

variable "ec2" {
  default = "t2.micro"
  type    = string

}

variable "name" {
  type    = string
  default = "test"

}

variable "subnet" {
  default = "10.0.0.0/24"
  type    = string

}

variable "vpc" {
  default = "10.0.0.0/16"
  type    = string

}

variable "test" {
  default = "test"
  type    = string

}