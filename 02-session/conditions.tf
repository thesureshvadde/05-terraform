resource "aws_instance" "condition" {
  ami = var.ami
  instance_type = var.instance_name == "mongodb" ? "t3.medium" : "t2.micro"
  tags = var.tags
}