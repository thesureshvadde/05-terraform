locals {
  # locals is same as variables, but locals can also evaluate conditions and functions in runtime
  ami = "ami-0f3c7d07486cad139"
  instance_type = var.isprod ? "t3.medium" : "t2.micro"
  public_key = file("${path.module}/suresh.pub")
}