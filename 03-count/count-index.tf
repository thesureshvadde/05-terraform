resource "aws_instance" "count-index" {
  count = length(var.instance_names)
  ami = var.ami
  instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" ? "t3.medium" : "t2.micro"
  tags = {
    Name = var.instance_names[count.index]
  }
}