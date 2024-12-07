# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "app1" {
  cidr_block = "10.190.0.0/16"

  tags = {
    Name = "app1"
    Service = "application1"
    Owner = "Papi-Chulo"
    Planet = "Uranus"
  }
}

resource "aws_vpc" "app2" {
  cidr_block = "10.191.0.0/16"

  tags = {
    Name = "app2"
    Service = "application2"
    Owner = "Papi-Chulo"
    Planet = "Uranus"
  }
}

# resource "aws_vpc" "app3" {
#   cidr_block = "10.192.0.0/16"

#   tags = {
#     Name = "app3"
#     Service = "application3"
#     Owner = "Papi-Chulo"
#     Planet = "Uranus"
#   }
# }

# resource "aws_vpc" "app4" {
#   cidr_block = "10.193.0.0/16"

#   tags = {
#     Name = "app4"
#     Service = "application4"
#     Owner = "Papi-Chulo"
#     Planet = "Uranus"
#   }
# }

# resource "aws_vpc" "app5" {
#   cidr_block = "10.194.0.0/16"

#   tags = {
#     Name = "app5"
#     Service = "application5"
#     Owner = "Papi-Chulo"
#     Planet = "Uranus"
#   }
# }

# resource "aws_vpc" "app6" {
#   cidr_block = "10.195.0.0/16"

#   tags = {
#     Name = "app6"
#     Service = "application6"
#     Owner = "Papi-Chulo"
#     Planet = "Uranus"
#   }
# }

# resource "aws_vpc" "app7" {
#   cidr_block = "10.196.0.0/16"

#   tags = {
#     Name = "app7"
#     Service = "application7"
#     Owner = "Papi-Chulo"
#     Planet = "Uranus"
#   }
# }