module "servers-mod"{
    source = "./servers-mod"
    servers = 1
}

output "ip_address" {
  value = module.servers-mod.ip_address
}

resource "aws_route53_record" "server" {
  zone_id = "Z03332081PKIMZ0ZYXWGW"
  name    = "server"
  type    = "A"
  ttl     = "300"
  records = [module.servers-mod.ip_address[0]]
}