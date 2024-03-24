variable "ami" {
  type = string
  default = "ami-0f3c7d07486cad139"
}

variable "instances" {
  type = map
  default = {
    web       = "t2.micro"
    mongodb   = "t3.medium"
    mysql     = "t3.medium"
    redis     = "t2.micro"
    rabbitmq  = "t2.micro"
    catalogue = "t2.micro"
    cart      = "t2.micro"
    user      = "t2.micro"
    payment   = "t2.micro"
    shipping  = "t2.micro"
  }
}

variable "zone_id" {
  type = string
  default = "Z061029932O00U328VUBA"
}

variable "domain_name" {
  type = string
  default = "sureshvadde.online"
}

variable "sg_name" {
  type = string
  default = "allow_all"
}