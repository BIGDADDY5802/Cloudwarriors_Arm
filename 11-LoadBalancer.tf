# Load Balancer for TOKYO VPC
resource "aws_lb" "app1_alb" {
  name               = "app1-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app1-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-northeast-1a.id,
    aws_subnet.public-ap-northeast-1c.id,
    aws_subnet.public-ap-northeast-1d.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App1LoadBalancer"
    Service = "App1"
    Owner   = "Papi Chulo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.app1_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app1_tg.arn
  }
}

data "aws_acm_certificate" "cert" {
  domain   = "jrpllc.link"
  statuses = ["ISSUED"]
  most_recent = true
}


resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.app1_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
  certificate_arn   = data.aws_acm_certificate.cert.arn



  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app1_443_tg.arn
  }
}

output "lb_dns_name" {
  value       = aws_lb.app1_alb.dns_name
  description = "The DNS name of the App1 Load Balancer."
}


# Load Balancer for NEW YORK VPC
resource "aws_lb" "app2_alb" {
  name               = "app2-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app2-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-us-east-1a.id,
    aws_subnet.public-us-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App1LoadBalancer"
    Service = "App2"
    Owner   = "Papi Chulo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http2" {
  load_balancer_arn = aws_lb.app2_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app2_tg.arn
  }
}

data "aws_acm_certificate" "cert2" {
  domain   = "jrpllc.link"
  statuses = ["ISSUED"]
  most_recent = true
}


resource "aws_lb_listener" "https2" {
  load_balancer_arn = aws_lb.app2_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
  certificate_arn   = data.aws_acm_certificate.cert.arn



  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app2_443_tg.arn
  }
}

output "lb_dns_name2" {
  value       = aws_lb.app2_alb.dns_name
  description = "The DNS name of the App2 Load Balancer."
}

# Load Balancer for LONDON VPC
resource "aws_lb" "app3_alb" {
  name               = "app3-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app3-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-eu-west-2a.id,
    aws_subnet.public-eu-west-2c.id    
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App3LoadBalancer"
    Service = "App3"
    Owner   = "Papi Chulo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http3" {
  load_balancer_arn = aws_lb.app3_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app3_tg.arn
  }
}

data "aws_acm_certificate" "cert3" {
  domain   = "jrpllc.link"
  statuses = ["ISSUED"]
  most_recent = true
}


resource "aws_lb_listener" "https3" {
  load_balancer_arn = aws_lb.app3_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
  certificate_arn   = data.aws_acm_certificate.cert.arn



  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app3_443_tg.arn
  }
}

output "lb_dns_name3" {
  value       = aws_lb.app3_alb.dns_name
  description = "The DNS name of the App3 Load Balancer."
}

# Load Balancer for SAO PAULO VPC
resource "aws_lb" "app4_alb" {
  name               = "app4-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app4-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-sa-east-1a.id,
    aws_subnet.public-ap-northeast-1c.id    
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App1LoadBalancer"
    Service = "App4"
    Owner   = "Papi Chulo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http4" {
  load_balancer_arn = aws_lb.app4_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app4_tg.arn
  }
}

data "aws_acm_certificate" "cert4" {
  domain   = "jrpllc.link"
  statuses = ["ISSUED"]
  most_recent = true
}


resource "aws_lb_listener" "https4" {
  load_balancer_arn = aws_lb.app4_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
  certificate_arn   = data.aws_acm_certificate.cert.arn



  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app4_443_tg.arn
  }
}

output "lb_dns_name4" {
  value       = aws_lb.app4_alb.dns_name
  description = "The DNS name of the App4 Load Balancer."
}

# Load Balancer for AUSTRALIA VPC
resource "aws_lb" "app5_alb" {
  name               = "app2-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app5-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-southeast-2a.id,
    aws_subnet.public-ap-southeast-2c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App1LoadBalancer"
    Service = "App5"
    Owner   = "Papi Chulo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http5" {
  load_balancer_arn = aws_lb.app5_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app5_tg.arn
  }
}

data "aws_acm_certificate" "cert5" {
  domain   = "jrpllc.link"
  statuses = ["ISSUED"]
  most_recent = true
}


resource "aws_lb_listener" "https5" {
  load_balancer_arn = aws_lb.app5_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
  certificate_arn   = data.aws_acm_certificate.cert.arn



  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app5_443_tg.arn
  }
}

output "lb_dns_name5" {
  value       = aws_lb.app5_alb.dns_name
  description = "The DNS name of the App5 Load Balancer."
}

# Load Balancer for HONG KONG VPC
resource "aws_lb" "app6_alb" {
  name               = "app6-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app6-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-east-1a.id,
    aws_subnet.public-ap-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App1LoadBalancer"
    Service = "App6"
    Owner   = "Papi Chulo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http6" {
  load_balancer_arn = aws_lb.app6_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app6_tg.arn
  }
}

data "aws_acm_certificate" "cert6" {
  domain   = "jrpllc.link"
  statuses = ["ISSUED"]
  most_recent = true
}


resource "aws_lb_listener" "https6" {
  load_balancer_arn = aws_lb.app6_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
  certificate_arn   = data.aws_acm_certificate.cert.arn



  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app6_443_tg.arn
  }
}

output "lb_dns_name6" {
  value       = aws_lb.app6_alb.dns_name
  description = "The DNS name of the App6 Load Balancer."
}

# Load Balancer for CALIFORNIA VPC
resource "aws_lb" "app7_alb" {
  name               = "app7-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app7-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-us-west-1b.id,
    aws_subnet.public-us-west-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App7LoadBalancer"
    Service = "App7"
    Owner   = "Papi Chulo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http7" {
  load_balancer_arn = aws_lb.app7_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app7_tg.arn
  }
}

data "aws_acm_certificate" "cert7" {
  domain   = "jrpllc.link"
  statuses = ["ISSUED"]
  most_recent = true
}


resource "aws_lb_listener" "https7" {
  load_balancer_arn = aws_lb.app7_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
  certificate_arn   = data.aws_acm_certificate.cert.arn



  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app7_443_tg.arn
  }
}

output "lb_dns_name7" {
  value       = aws_lb.app7_alb.dns_name
  description = "The DNS name of the App7 Load Balancer."
}
