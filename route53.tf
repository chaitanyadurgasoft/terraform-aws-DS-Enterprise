data "aws_route53_zone" "cgit" {
  name         = "testcgit.xyz."
  private_zone = false
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.cgit.zone_id
  name    = "prod.testcgit.xyz"
  type    = "A"
  alias {
    name                   = module.dsb1-elb.elb_dns_name
    zone_id                = module.dsb1-elb.elb_zone_id
    evaluate_target_health = true
  }
}
