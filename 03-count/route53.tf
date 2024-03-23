resource "aws_route53_record" "records" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.count-index[count.index].private_ip]
}