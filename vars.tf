variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "ap-south-1"
}

#variable "WIN_AMIS" {
#type = "map" default = { 
#ap-south-1 = "ami-034a4d85b5ef5e779"
#us-west-2 = "ami-9f5efbff"
#eu-west-1 = "ami-0f26101934dec146b" 
#} 
#} 

variable "PATH_TO_PRIVATE_KEY" {
  default = "hclmsiwin"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "hclmsiwin.pub"
}

variable "INSTANCE_USERNAME" {
  default = "msiadmin"
}

variable "INSTANCE_PASSWORD" {
}

