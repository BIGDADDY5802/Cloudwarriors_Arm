resource "aws_internet_gateway" "igw1" {
  provider                = aws.ap-northeast-1
  vpc_id = aws_vpc.app1.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_internet_gateway" "igw2" {
  provider                = aws.us-east-1
  vpc_id = aws_vpc.app2.id

  tags = {
    Name    = "app2_IG"
    Service = "application2"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_internet_gateway" "igw3" {
  provider                = aws.eu-west-2
  vpc_id = aws_vpc.app3.id

  tags = {
    Name    = "app3_IG"
    Service = "application3"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_internet_gateway" "igw4" {
  provider                = aws.sa-east-1
  vpc_id = aws_vpc.app4.id

  tags = {
    Name    = "app4_IG"
    Service = "application4"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_internet_gateway" "igw5" {
  provider                = aws.ap-southeast-2
  vpc_id = aws_vpc.app5.id

  tags = {
    Name    = "app5_IG"
    Service = "application5"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_internet_gateway" "igw6" {
  provider                = aws.ap-east-1
  vpc_id = aws_vpc.app6.id

  tags = {
    Name    = "app6_IG"
    Service = "application6"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_internet_gateway" "igw7" {
  provider                = aws.us-west-1
  vpc_id = aws_vpc.app7.id

  tags = {
    Name    = "app7_IG"
    Service = "application7"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}
