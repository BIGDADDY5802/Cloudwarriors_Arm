# Target Group for the Load Balancer for TOKYO VPC
resource "aws_lb_target_group" "app1_tg" {
  name     = "app1-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app1.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App1TargetGroup"
    Service = "App1"
    Owner   = "User"
    Project = "Web Service"
  }
}


resource "aws_lb_target_group" "app1_443_tg" {
  name     = "app1-443tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app1.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "app1_443_tg"
    Service = "App1"
    Owner   = "Papi Chulo"
    Project = "App1"
  }
}

# Target Group for the Load Balancer for NEW YORK VPC
resource "aws_lb_target_group" "app2_tg" {
  name     = "app2-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app2.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App1TargetGroup"
    Service = "App2"
    Owner   = "User"
    Project = "Web Service"
  }
}


resource "aws_lb_target_group" "app2_443_tg" {
  name     = "app2-443tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app2.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "app2_443_tg"
    Service = "App2"
    Owner   = "Papi Chulo"
    Project = "App2"
  }
}

# Target Group for the Load Balancer for LONDON VPC
resource "aws_lb_target_group" "app3_tg" {
  name     = "app3-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app3.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App3TargetGroup"
    Service = "App3"
    Owner   = "User"
    Project = "Web Service"
  }
}


resource "aws_lb_target_group" "app3_443_tg" {
  name     = "app3-443tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app3.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "app3_443_tg"
    Service = "App3"
    Owner   = "Papi Chulo"
    Project = "App3"
  }
}

# Target Group for the Load Balancer for SAO PAULO VPC
resource "aws_lb_target_group" "app4_tg" {
  name     = "app4-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app4.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App4TargetGroup"
    Service = "App4"
    Owner   = "User"
    Project = "Web Service"
  }
}


resource "aws_lb_target_group" "app4_443_tg" {
  name     = "app4-443tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app4.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "app4_443_tg"
    Service = "App4"
    Owner   = "Papi Chulo"
    Project = "App4"
  }
}

# Target Group for the Load Balancer for AUSTRALIA VPC
resource "aws_lb_target_group" "app5_tg" {
  name     = "app5-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app5.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App5TargetGroup"
    Service = "App5"
    Owner   = "User"
    Project = "Web Service"
  }
}


resource "aws_lb_target_group" "app5_443_tg" {
  name     = "app5-443tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app5.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "app5_443_tg"
    Service = "App5"
    Owner   = "Papi Chulo"
    Project = "App5"
  }
}

# Target Group for the Load Balancer for HONG KONG VPC
resource "aws_lb_target_group" "app6_tg" {
  name     = "app6-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app6.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App6TargetGroup"
    Service = "App6"
    Owner   = "User"
    Project = "Web Service"
  }
}


resource "aws_lb_target_group" "app6_443_tg" {
  name     = "app6-443tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app6.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "app6_443_tg"
    Service = "App6"
    Owner   = "Papi Chulo"
    Project = "App6"
  }
}

# Target Group for the Load Balancer for CALIFORNIA VPC
resource "aws_lb_target_group" "app7_tg" {
  name     = "app7-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app7.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App7TargetGroup"
    Service = "App7"
    Owner   = "User"
    Project = "Web Service"
  }
}


resource "aws_lb_target_group" "app7_443_tg" {
  name     = "app7-443tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app7.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "app7_443_tg"
    Service = "App7"
    Owner   = "Papi Chulo"
    Project = "App7"
  }
}
