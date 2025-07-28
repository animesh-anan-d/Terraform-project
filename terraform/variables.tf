variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "ankit" {
  description = "Key pair for EC2 SSH"
  type        = string
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-0c768662cc797cd75" # Ubuntu 22.04 in ap-south-1
}
