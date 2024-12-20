############EC 2 Instance#########

variable "ami_id" {
  type    = string
  default = "ami-03fa85deedfcac80b"
}

variable "ec2_micro" {
  type    = string
  default = "t3.micro"
}

variable "ec2_medium" {
  type    = string
  default = "t3.medium"
}

variable "pem_key" {
  type    = string
  default = "jenkins_tool"
}

variable "public_subnet_id" {
  type        = string
}

variable "publicSG_id" {
  type        = string
}

variable "private1_subnet_id" {
  type        = string
}

variable "private2_subnet_id" {
  type        = string
}


variable "privateSG_id" {
  type        = string
}
