resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.app1.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

resource "aws_internet_gateway" "igw2" {
  vpc_id = aws_vpc.app2.id

  tags = {
    Name    = "app2_IG"
    Service = "application2"
    Owner   = "Papi Chulo"
    Planet  = "Uranus"
  }
}

# resource "aws_internet_gateway" "igw3" {
#   vpc_id = aws_vpc.app3.id

#   tags = {
#     Name    = "app3_IG"
#     Service = "application1"
#     Owner   = "Papi Chulo"
#     Planet  = "Uranus"
#   }
# }

# resource "aws_internet_gateway" "igw4" {
#   vpc_id = aws_vpc.app4.id

#   tags = {
#     Name    = "app4_IG"
#     Service = "application1"
#     Owner   = "Papi Chulo"
#     Planet  = "Uranus"
#   }
# }

# resource "aws_internet_gateway" "igw5" {
#   vpc_id = aws_vpc.app5.id

#   tags = {
#     Name    = "app5_IG"
#     Service = "application1"
#     Owner   = "Papi Chulo"
#     Planet  = "Uranus"
#   }
# }

# resource "aws_internet_gateway" "igw6" {
#   vpc_id = aws_vpc.app6.id

#   tags = {
#     Name    = "app6_IG"
#     Service = "application1"
#     Owner   = "Papi Chulo"
#     Planet  = "Uranus"
#   }
# }

# resource "aws_internet_gateway" "igw7" {
#   vpc_id = aws_vpc.app7.id

#   tags = {
#     Name    = "app7_IG"
#     Service = "application1"
#     Owner   = "Papi Chulo"
#     Planet  = "Uranus"
#   }
# }