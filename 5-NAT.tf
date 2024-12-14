resource "aws_eip" "nat1" {
  provider = aws.ap-northeast-1
  vpc = true

  tags = {
    Name = "nat1"
  }
}

resource "aws_nat_gateway" "nat1" {
  provider = aws.ap-northeast-1
  allocation_id = aws_eip.nat1.id
   subnet_id     = aws_subnet.public-ap-northeast-1a.id

  tags = {
    Name = "nat1"
  }

   depends_on = [aws_internet_gateway.igw1]
}  

resource "aws_eip" "nat2" {
  provider = aws.us-east-1
  vpc = true

  tags = {
    Name = "nat2"
  }
}

resource "aws_nat_gateway" "nat2" {
  provider = aws.us-east-1
  allocation_id = aws_eip.nat2.id
   subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "nat2"
  }

    depends_on = [aws_internet_gateway.igw2]

}

resource "aws_eip" "nat3" {
  provider = aws.eu-west-2
  vpc = true

  tags = {
    Name = "nat3"
  }
}

resource "aws_nat_gateway" "nat3" {
  provider = aws.eu-west-2
  allocation_id = aws_eip.nat3.id
   subnet_id     = aws_subnet.public-eu-west-2a.id

  tags = {
    Name = "nat3"
  }

    depends_on = [aws_internet_gateway.igw3]

}

resource "aws_eip" "nat4" {
  provider = aws.sa-east-1
  vpc = true

  tags = {
    Name = "nat4"
  }
}

resource "aws_nat_gateway" "nat4" {
  provider = aws.sa-east-1
  allocation_id = aws_eip.nat4.id
   subnet_id     = aws_subnet.public-sa-east-1a.id

  tags = {
    Name = "nat4"
  }

    depends_on = [aws_internet_gateway.igw4]

}

resource "aws_eip" "nat5" {
  provider = aws.ap-southeast-2
  vpc = true

  tags = {
    Name = "nat5"
  }
}

resource "aws_nat_gateway" "nat5" {
  provider = aws.ap-southeast-2
  allocation_id = aws_eip.nat5.id
   subnet_id     = aws_subnet.public-ap-southeast-2a.id

  tags = {
    Name = "nat5"
  }

    depends_on = [aws_internet_gateway.igw5]

}

resource "aws_eip" "nat6" {
  provider = aws.ap-east-1
  vpc = true

  tags = {
    Name = "nat6"
  }
}

resource "aws_nat_gateway" "nat6" {
  provider = aws.ap-east-1
  allocation_id = aws_eip.nat6.id
   subnet_id     = aws_subnet.public-ap-east-1a.id

  tags = {
    Name = "nat6"
  }

    depends_on = [aws_internet_gateway.igw6]

}

resource "aws_eip" "nat7" {
  provider = aws.us-west-1
  vpc = true

  tags = {
    Name = "nat7"
  }
}

resource "aws_nat_gateway" "nat7" {
  provider = aws.us-west-1
  allocation_id = aws_eip.nat7.id
   subnet_id     = aws_subnet.public-us-west-1b.id

  tags = {
    Name = "nat7"
  }

    depends_on = [aws_internet_gateway.igw7]

}

