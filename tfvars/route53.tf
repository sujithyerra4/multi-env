# resource "aws_route53_record" "join"{
#     for_each = aws_instance.expense
#     zone_id=var.zone_id
#     name= each.key=="frontend-prod"? var.zone : "${each.key}.${var.zone}"
#     type="A"
#     ttl=1
#     records= each.key == startswith(each.key, "frontend") ? [each.value.public_ip] : [each.value.private_ip]
#     allow_overwrite=true

# }

resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense
  zone_id = var.zone_id
  #backend.daws81s.online
  name            = each.key == "frontend-prod" ? var.zone : "${each.key}.${var.zone}"
  type            = "A"
  ttl             = 1
  records         = startswith(each.key, "frontend") ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
}