resource "aws_route_table" "private_app1" {
  provider = aws.ap-northeast-1
  vpc_id = aws_vpc.app1.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat1.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_app1" {
  provider = aws.ap-northeast-1
  vpc_id = aws_vpc.app1.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw1.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-ap-northeast-1a" {
  provider = aws.ap-northeast-1
  subnet_id      = aws_subnet.private-ap-northeast-1a.id
  route_table_id = aws_route_table.private_app1.id
}

resource "aws_route_table_association" "private-ap-northeast-1c" {
  provider = aws.ap-northeast-1
  subnet_id      = aws_subnet.private-ap-northeast-1c.id
  route_table_id = aws_route_table.private_app1.id
}

resource "aws_route_table_association" "private-ap-northeast-1d" {
  provider = aws.ap-northeast-1
  subnet_id      = aws_subnet.private-ap-northeast-1d.id
  route_table_id = aws_route_table.private_app1.id
}

#public

resource "aws_route_table_association" "public-ap-northeast-1a" {
  provider = aws.ap-northeast-1
  subnet_id      = aws_subnet.public-ap-northeast-1a.id
  route_table_id = aws_route_table.public_app1.id
}

resource "aws_route_table_association" "public-ap-northeast-1c" {
  provider = aws.ap-northeast-1
  subnet_id      = aws_subnet.public-ap-northeast-1c.id
  route_table_id = aws_route_table.public_app1.id
}

resource "aws_route_table_association" "public-ap-northeast-1d" {
  provider = aws.ap-northeast-1
  subnet_id      = aws_subnet.public-ap-northeast-1d.id
  route_table_id = aws_route_table.public_app1.id
}


resource "aws_route_table" "private_app2" {
  provider = aws.us-east-1
  vpc_id = aws_vpc.app2.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat2.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_app2" {
  provider = aws.us-east-1
  vpc_id = aws_vpc.app2.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw2.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-us-east-1a" {
  provider = aws.us-east-1
  subnet_id      = aws_subnet.private-us-east-1a.id
  route_table_id = aws_route_table.private_app2.id
}

resource "aws_route_table_association" "private-us-east-1c" {
  provider = aws.us-east-1
  subnet_id      = aws_subnet.private-us-east-1c.id
  route_table_id = aws_route_table.private_app2.id
}


#public

resource "aws_route_table_association" "public-us-east-1a" {
  provider = aws.us-east-1
  subnet_id      = aws_subnet.public-us-east-1a.id
  route_table_id = aws_route_table.public_app2.id
}

resource "aws_route_table_association" "public-us-east-1c" {
  provider = aws.us-east-1
  subnet_id      = aws_subnet.public-us-east-1c.id
  route_table_id = aws_route_table.public_app2.id
}

resource "aws_route_table" "private_app3" {
  provider = aws.eu-west-2
  vpc_id = aws_vpc.app3.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat3.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_app3" {
  provider = aws.eu-west-2
  vpc_id = aws_vpc.app3.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw3.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-eu-west-2a" {
  provider = aws.eu-west-2
  subnet_id      = aws_subnet.private-eu-west-2a.id
  route_table_id = aws_route_table.private_app3.id
}

resource "aws_route_table_association" "private-eu-west-2c" {
  provider = aws.eu-west-2
  subnet_id      = aws_subnet.private-eu-west-2c.id
  route_table_id = aws_route_table.private_app3.id
}


#public

resource "aws_route_table_association" "public-eu-west-2a" {
  provider = aws.eu-west-2
  subnet_id      = aws_subnet.public-eu-west-2a.id
  route_table_id = aws_route_table.public_app3.id
}

resource "aws_route_table_association" "public-eu-west-2c" {
  provider = aws.eu-west-2
  subnet_id      = aws_subnet.public-eu-west-2c.id
  route_table_id = aws_route_table.public_app3.id
}

resource "aws_route_table" "private_app4" {
  provider = aws.sa-east-1
  vpc_id = aws_vpc.app4.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat4.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_app4" {
  provider = aws.sa-east-1
  vpc_id = aws_vpc.app4.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw4.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-sa-east-1a" {
  provider = aws.sa-east-1
  subnet_id      = aws_subnet.private-sa-east-1a.id
  route_table_id = aws_route_table.private_app4.id
}

resource "aws_route_table_association" "private-sa-east-1c" {
  provider = aws.sa-east-1
  subnet_id      = aws_subnet.private-sa-east-1c.id
  route_table_id = aws_route_table.private_app4.id
}


#public

resource "aws_route_table_association" "public-sa-east-1a" {
  provider = aws.sa-east-1
  subnet_id      = aws_subnet.public-sa-east-1a.id
  route_table_id = aws_route_table.public_app4.id
}

resource "aws_route_table_association" "public-sa-east-1c" {
  provider = aws.sa-east-1
  subnet_id      = aws_subnet.public-sa-east-1c.id
  route_table_id = aws_route_table.public_app4.id
}

resource "aws_route_table" "private_app5" {
  provider = aws.ap-southeast-2
  vpc_id = aws_vpc.app5.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat5.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_app5" {
  provider = aws.ap-southeast-2
  vpc_id = aws_vpc.app5.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw5.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-ap-southeast-2a" {
  provider = aws.ap-southeast-2
  subnet_id      = aws_subnet.private-ap-southeast-2a.id
  route_table_id = aws_route_table.private_app5.id
}

resource "aws_route_table_association" "private-ap-southeast-2c" {
  provider = aws.ap-southeast-2
  subnet_id      = aws_subnet.private-ap-southeast-2c.id
  route_table_id = aws_route_table.private_app5.id
}


#public

resource "aws_route_table_association" "public-ap-southeast-2a" {
  provider = aws.ap-southeast-2
  subnet_id      = aws_subnet.public-ap-southeast-2a.id
  route_table_id = aws_route_table.public_app5.id
}

resource "aws_route_table_association" "public-ap-southeast-2c" {
  provider = aws.ap-southeast-2
  subnet_id      = aws_subnet.public-ap-southeast-2c.id
  route_table_id = aws_route_table.public_app5.id
}

resource "aws_route_table" "private_app6" {
  provider = aws.ap-east-1
  vpc_id = aws_vpc.app6.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat6.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_app6" {
  provider = aws.ap-east-1
  vpc_id = aws_vpc.app6.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw6.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-ap-east-1a" {
  provider = aws.ap-east-1
  subnet_id      = aws_subnet.private-ap-east-1a.id
  route_table_id = aws_route_table.private_app6.id
}

resource "aws_route_table_association" "private-ap-east-1c" {
  provider = aws.ap-east-1
  subnet_id      = aws_subnet.private-ap-east-1c.id
  route_table_id = aws_route_table.private_app6.id
}


#public

resource "aws_route_table_association" "public-ap-east-1a" {
  provider = aws.ap-east-1
  subnet_id      = aws_subnet.public-ap-east-1a.id
  route_table_id = aws_route_table.public_app6.id
}

resource "aws_route_table_association" "public-ap-east-1c" {
  provider = aws.ap-east-1
  subnet_id      = aws_subnet.public-ap-east-1c.id
  route_table_id = aws_route_table.public_app6.id
}

resource "aws_route_table" "private_app7" {
  provider = aws.us-west-1
  vpc_id = aws_vpc.app7.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat7.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_app7" {
  provider = aws.us-west-1
  vpc_id = aws_vpc.app7.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw7.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-us-west-1b" {
  provider = aws.us-west-1
  subnet_id      = aws_subnet.private-us-west-1b.id
  route_table_id = aws_route_table.private_app7.id
}

resource "aws_route_table_association" "private-us-west-1c" {
  provider = aws.us-west-1
  subnet_id      = aws_subnet.private-us-west-1c.id
  route_table_id = aws_route_table.private_app7.id
}


#public

resource "aws_route_table_association" "public-us-west-1b" {
  provider = aws.us-west-1
  subnet_id      = aws_subnet.public-us-west-1b.id
  route_table_id = aws_route_table.public_app7.id
}

resource "aws_route_table_association" "public-us-west-1c" {
  provider = aws.us-west-1
  subnet_id      = aws_subnet.public-us-west-1c.id
  route_table_id = aws_route_table.public_app7.id
}
