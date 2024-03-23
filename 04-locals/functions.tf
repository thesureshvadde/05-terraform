resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = local.public_key
}

resource "aws_instance" "function" {
  ami = local.ami
  instance_type = local.instance_type
  key_name = aws_key_pair.deployer.id
}
