# resource "aws_instance" "count" {
#   count = 10
#   ami = var.ami
#   instance_type = "t2.micro"
#   tags = {
#     Name = "Roboshop"
#   }
# }