variable "ami" {
  type = string
  default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "sg_name" {
  type = string
  default = "allow_all"
}

variable "tags" {
  type = map
  default = {
    Name        = "MongoDB"
    Terraform   = true
    Environment = "DEV"
    Project     = "Roboshop"
    Component   = "MongoDB"
  }
}