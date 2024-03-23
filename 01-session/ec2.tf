resource "aws_instance" "this" {
  ami                     = var.ami
  instance_type           = var.instance_type
  security_groups = [aws_security_group.sg.id]
  tags = var.tags
}