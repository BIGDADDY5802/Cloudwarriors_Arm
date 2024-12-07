#These are   for  public TOKYO

resource "aws_subnet" "public-ap-northeast-1a" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.190.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-1a"
    Service = "application1"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "public-ap-northeast-1c" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.190.3.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-1c"
    Service = "application1"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}



#these are for private
resource "aws_subnet" "private-ap-northeast-1a" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.190.11.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name    = "private-ap-northeast-1a"
    Service = "application1"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "private-ap-northeast-1c" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.190.13.0/24"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name    = "private-ap-northeast-1c"
    Service = "application1"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

#These are   for  public NEW YORK

resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.app2.id
  cidr_block              = "10.191.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1a"
    Service = "application2"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "public-us-east-1c" {
  vpc_id                  = aws_vpc.app2.id
  cidr_block              = "10.191.3.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1c"
    Service = "application2"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}



#these are for private
resource "aws_subnet" "private-us-east-1a" {
  vpc_id            = aws_vpc.app2.id
  cidr_block        = "10.191.11.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name    = "private-us-east-1a"
    Service = "application2"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "private-us-east-1c" {
  vpc_id            = aws_vpc.app2.id
  cidr_block        = "10.191.13.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name    = "private-us-east-1c"
    Service = "application2"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

#These are   for  public LONDON
/*
resource "aws_subnet" "public-eu-west-2a" {
  vpc_id                  = aws_vpc.app3.id
  cidr_block              = "10.192.1.0/24"
  availability_zone       = "eu-west-2a"

  tags = {
    Name    = "public-eu-west-2a"
    Service = "application3"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "public-eu-west-2c" {
  vpc_id                  = aws_vpc.app3.id
  cidr_block              = "10.192.3.0/24"
  availability_zone       = "eu-west-2c"

  tags = {
    Name    = "public-eu-west-2c"
    Service = "application3"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

#these are for private

resource "aws_subnet" "private-eu-west-2a" {
  vpc_id            = aws_vpc.app3.id
  cidr_block        = "10.192.11.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name    = "private-eu-west-2a"
    Service = "application3"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "private-eu-west-2c" {
  vpc_id            = aws_vpc.app3.id
  cidr_block        = "10.192.13.0/24"
  availability_zone = "eu-west-2c"

  tags = {
    Name    = "private-eu-west-2c"
    Service = "application3"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

#These are   for  public SAO PAULO

resource "aws_subnet" "public-sa-east-1a" {
  vpc_id                  = aws_vpc.app4.id
  cidr_block              = "10.193.1.0/24"
  availability_zone       = "sa-east-1a"

  tags = {
    Name    = "public-sa-east-1a"
    Service = "application4"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "public-sa-east-1c" {
  vpc_id                  = aws_vpc.app4.id
  cidr_block              = "10.193.3.0/24"
  availability_zone       = "sa-east-1c"

  tags = {
    Name    = "public-sa-east-1c"
    Service = "application4"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

#these are for private

resource "aws_subnet" "private-sa-east-1a" {
  vpc_id            = aws_vpc.app4.id
  cidr_block        = "10.193.11.0/24"
  availability_zone = "sa-east-1a"

  tags = {
    Name    = "private-sa-east-1a"
    Service = "application4"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "private-sa-east-1c" {
  vpc_id            = aws_vpc.app4.id
  cidr_block        = "10.193.13.0/24"
  availability_zone = "sa-east-1c"

  tags = {
    Name    = "private-sa-east-1c"
    Service = "application4"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

#These are   for  public SYDNEY

resource "aws_subnet" "public-ap-southeast-2a" {
  vpc_id                  = aws_vpc.app5.id
  cidr_block              = "10.194.1.0/24"
  availability_zone       = "ap-southeast-2a"

  tags = {
    Name    = "public-ap-southeast-2a"
    Service = "application5"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "public-ap-southeast-2c" {
  vpc_id                  = aws_vpc.app5.id
  cidr_block              = "10.194.3.0/24"
  availability_zone       = "ap-southeast-2c"

  tags = {
    Name    = "public-ap-southeast-2c"
    Service = "application5"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

#these are for private

resource "aws_subnet" "private-ap-southeast-2a" {
  vpc_id            = aws_vpc.app5.id
  cidr_block        = "10.194.11.0/24"
  availability_zone = "ap-southeast-2a"

  tags = {
    Name    = "private-ap-southeast-2a"
    Service = "application5"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "private-ap-southeast-2c" {
  vpc_id            = aws_vpc.app5.id
  cidr_block        = "10.194.13.0/24"
  availability_zone = "ap-southeast-2c"

  tags = {
    Name    = "private-ap-southeast-2c"
    Service = "application5"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

#These are   for  public HONG KONG

resource "aws_subnet" "public-ap-east-1a" {
  vpc_id                  = aws_vpc.app6.id
  cidr_block              = "10.195.1.0/24"
  availability_zone       = "ap-east-1a"

  tags = {
    Name    = "public-ap-east-1a"
    Service = "application6"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "public-ap-east-1c" {
  vpc_id                  = aws_vpc.app6.id
  cidr_block              = "10.195.3.0/24"
  availability_zone       = "ap-east-1c"

  tags = {
    Name    = "public-ap-east-1c"
    Service = "application6"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

#these are for private

resource "aws_subnet" "private-ap-east-1a" {
  vpc_id            = aws_vpc.app6.id
  cidr_block        = "10.195.11.0/24"
  availability_zone = "ap-east-1a"

  tags = {
    Name    = "private-ap-east-1a"
    Service = "application6"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "private-ap-east-1c" {
  vpc_id            = aws_vpc.app6.id
  cidr_block        = "10.195.13.0/24"
  availability_zone = "ap-east-1c"

  tags = {
    Name    = "private-ap-east-1c"
    Service = "application6"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

#These are   for  public CALIFORNIA

resource "aws_subnet" "public-us-west-1a" {
  vpc_id                  = aws_vpc.app7.id
  cidr_block              = "10.196.1.0/24"
  availability_zone       = "us-west-1a"

  tags = {
    Name    = "public-us-west-1a"
    Service = "application7"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "public-us-west-1c" {
  vpc_id                  = aws_vpc.app7.id
  cidr_block              = "10.196.3.0/24"
  availability_zone       = "us-west-1c"

  tags = {
    Name    = "public-us-west-1c"
    Service = "application7"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

#these are for private

resource "aws_subnet" "private-us-west-1a" {
  vpc_id            = aws_vpc.app7.id
  cidr_block        = "10.196.11.0/24"
  availability_zone = "us-west-1a"

  tags = {
    Name    = "private-us-west-1a"
    Service = "application7"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_subnet" "private-us-west-1c" {
  vpc_id            = aws_vpc.app7.id
  cidr_block        = "10.196.13.0/24"
  availability_zone = "us-west-1c"

  tags = {
    Name    = "private-us-west-1c"
    Service = "application7"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}







