resource "aws_instance" "roboshop" {
  for_each = var.instances
  ami = var.ami
  instance_type = each.value

  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "records" {
  for_each = aws_instance.roboshop
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip] 
}