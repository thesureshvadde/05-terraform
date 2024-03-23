variable "ami" {
  type = string
  default = "ami-0f3c7d07486cad139"
}

variable "instance_names" {
  type = list
  default = ["web", "mongodb", "mysql", "redis", "rabbitmq", "catalogue", "cart", "user", "shipping", "payment"]
}

variable "zone_id" {
  type = string
  default = "Z061029932O00U328VUBA"
}

variable "domain_name" {
  type = string
  default = "sureshvadde.online"
}