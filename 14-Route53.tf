
data "aws_route53_zone" "main" {
  name         = "jrpllc.link"  # The domain name you want to look up
  private_zone = false
}

# TOKYO VPC

resource "aws_route53_record" "www" {
  provider = aws.ap-northeast-1
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "jrpllc.link"
  type    = "A"

  alias {
    name                   = aws_lb.app1_alb.dns_name
    zone_id                = aws_lb.app1_alb.zone_id
    evaluate_target_health = true
  }
}

# NEW YORK VPC

resource "aws_route53_record" "www2" {
  provider = aws.us-east-1
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "jrpllc.link"
  type    = "A"

  alias {
    name                   = aws_lb.app2_alb.dns_name
    zone_id                = aws_lb.app2_alb.zone_id
    evaluate_target_health = true
  }
}

# LONDON VPC

resource "aws_route53_record" "www3" {
  provider = aws.eu-west-2
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "jrpllc.link"
  type    = "A"

  alias {
    name                   = aws_lb.app3_alb.dns_name
    zone_id                = aws_lb.app3_alb.zone_id
    evaluate_target_health = true
  }
}

# SAO PAULO VPC

resource "aws_route53_record" "www4" {
  provider = aws.sa-east-1
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "jrpllc.link"
  type    = "A"

  alias {
    name                   = aws_lb.app4_alb.dns_name
    zone_id                = aws_lb.app4_alb.zone_id
    evaluate_target_health = true
  }
}

# AUSTRALIA VPC

resource "aws_route53_record" "www5" {
  provider = aws.ap-southeast-2
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "jrpllc.link"
  type    = "A"

  alias {
    name                   = aws_lb.app5_alb.dns_name
    zone_id                = aws_lb.app5_alb.zone_id
    evaluate_target_health = true
  }
}

# HONG KONG VPC

resource "aws_route53_record" "www6" {
  provider = aws.ap-east-1
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "jrpllc.link"
  type    = "A"

  alias {
    name                   = aws_lb.app6_alb.dns_name
    zone_id                = aws_lb.app6_alb.zone_id
    evaluate_target_health = true
  }
}

# CALIFORNIA VPC

resource "aws_route53_record" "www7" {
  provider = aws.us-west-1
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "jrpllc.link"
  type    = "A"

  alias {
    name                   = aws_lb.app7_alb.dns_name
    zone_id                = aws_lb.app7_alb.zone_id
    evaluate_target_health = true
  }
}
