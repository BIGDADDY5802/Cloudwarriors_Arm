resource "aws_eip" "nat1" {
  vpc = true

  tags = {
    Name = "nat1"
  }
}

resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.nat1.id
   subnet_id     = aws_subnet.public-ap-northeast-1a.id

  tags = {
    Name = "nat1"
  }

   depends_on = [aws_internet_gateway.igw1]
}  

resource "aws_eip" "nat2" {
  vpc = true

  tags = {
    Name = "nat2"
  }
}

resource "aws_nat_gateway" "nat2" {
  allocation_id = aws_eip.nat2.id
   subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "nat2"
  }

    depends_on = [aws_internet_gateway.igw2]

}
/*
resource "aws_eip" "nat3" {
  vpc = true

  tags = {
    Name = "nat3"
  }
}

resource "aws_nat_gateway" "nat3" {
  allocation_id = aws_eip.nat3.id
   subnet_id     = aws_subnet.public-eu-west-2a.id

  tags = {
    Name = "nat3"
  }

    depends_on = [aws_internet_gateway.igw3]

}

resource "aws_eip" "nat4" {
  vpc = true

  tags = {
    Name = "nat4"
  }
}

resource "aws_nat_gateway" "nat4" {
  allocation_id = aws_eip.nat4.id
   subnet_id     = aws_subnet.public-sa-east-1a.id

  tags = {
    Name = "nat4"
  }

    depends_on = [aws_internet_gateway.igw4]

}

resource "aws_eip" "nat5" {
  vpc = true

  tags = {
    Name = "nat5"
  }
}

resource "aws_nat_gateway" "nat5" {
  allocation_id = aws_eip.nat5.id
   subnet_id     = aws_subnet.public-ap-southeast-2a.id

  tags = {
    Name = "nat5"
  }

    depends_on = [aws_internet_gateway.igw5]

}

resource "aws_eip" "nat6" {
  vpc = true

  tags = {
    Name = "nat6"
  }
}

resource "aws_nat_gateway" "nat6" {
  allocation_id = aws_eip.nat6.id
   subnet_id     = aws_subnet.public-ap-east-1a.id

  tags = {
    Name = "nat6"
  }

    depends_on = [aws_internet_gateway.igw6]

}

resource "aws_eip" "nat7" {
  vpc = true

  tags = {
    Name = "nat7"
  }
}

resource "aws_nat_gateway" "nat7" {
  allocation_id = aws_eip.nat7.id
   subnet_id     = aws_subnet.public-us-west-1a.id

  tags = {
    Name = "nat7"
  }

    depends_on = [aws_internet_gateway.igw7]

}

