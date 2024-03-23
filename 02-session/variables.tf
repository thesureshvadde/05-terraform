variable "ami" {
  type = string
  default = "ami-0f3c7d07486cad139"
}

variable "instance_name" {
  type = string
  default = "mongodb"
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