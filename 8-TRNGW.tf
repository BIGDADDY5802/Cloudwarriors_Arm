
# Define the Terraform provider for the primary region (TOKYO).
provider "aws" {
  region = "ap-northeast-1"
  alias = "ap-northeast-1"
}

# Define the Terraform provider for the second region (NEW YORK).
provider "aws" {
  region = "us-east-1"
  alias = "us-east-1"
}

# Define the Terraform provider for the third region (LONDON).
provider "aws" {
  region = "eu-west-2"
  alias = "eu-west-2"
}

# Define the Terraform provider for the fourth region (SAO PAULO).
provider "aws" {
  region = "sa-east-1"
  alias = "sa-east-1"
}

# Define the Terraform provider for the fifth region (AUSTRALIA).
provider "aws" {
  region = "ap-southeast-2"
  alias = "ap-southeast-2"
}

# Define the Terraform provider for the sixth region (HONG KONG).
provider "aws" {
  region = "ap-east-1"
  alias = "ap-east-1"
}

# Define the Terraform provider for the seventh region (CALIFORNIA).
provider "aws" {
  region = "us-west-1"
  alias = "us-west-1"
}

# This Terraform configuration creates a Transit Gateway in the primary region (TOKYO) and attaches a VPC in the primary region (TOKYO) directly to the Transit Gateway.

# Create a Transit Gateway in the primary region (TOKYO).

resource "aws_ec2_transit_gateway" "tgw" {
  description = "Central Transit Gateway for 7 VPCs"
  provider   = aws.ap-northeast-1
  amazon_side_asn = 64512
  auto_accept_shared_attachments = "enable"
  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  dns_support = "enable"
  tags = {
    Name = "Transit Gateway"
  }
}

#Attach the VPC in the primary region (TOKYO) directly to the Transit Gateway.

# data "aws_subnet_ids" "app1" {
#   vpc_id = aws_vpc.app1_id
# }

resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_app1_attachment" {
  provider           = aws.ap-northeast-1
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  vpc_id             = "aws_vpc.app1.id" # Replace with the VPC ID in First Region  (TOKYO)
  subnet_ids         = ["data.aws_subnet_ids.app1[1].id", "data.aws_subnet_ids.app1[2].id"] # Replace with subnet IDs

  tags = {
    Name = "app1-attachment"
  }
}


#Peering Connection between the VPC in the First region (TOKYO) and the VPC in the Second region (NEW YORK).

# data "aws_subnet_ids" "app2" {
#   vpc_id = aws_vpc.app2_id
# }

resource "aws_vpc_peering_connection" "region_app2_to_tgw" {
  provider            = aws.ap-northeast-1
  vpc_id              = "aws_vpc.app1.id" # Replace with Primary Region VPC ID
  peer_vpc_id         = "aws_vpc.app2.id" # Replace with Region 2 VPC ID
  peer_region         = "us-east-1"
  #peer_owner_id       = "123456789012" # Your AWS Account ID (All VPCs are in the same account)
  auto_accept         = true

  tags = {
    Name = "app1-to-app2"
  }
}

#Peering Connection between the VPC in the primary region (TOKYO) and the VPC in the Third region (LONDON).

# data "aws_subnet_ids" "app3" {
#   vpc_id = aws_vpc.app3_id
# }

resource "aws_vpc_peering_connection" "region_app3_to_tgw" {
  provider            = aws.ap-northeast-1
  vpc_id              = "aws_vpc.app1.id" # Replace with Primary Region VPC ID
  peer_vpc_id         = "aws_vpc.app3.id" # Replace with Region 3 VPC ID
  peer_region         = "eu-west-2"
  #peer_owner_id       = "123456789012" # Your AWS Account ID (All VPCs are in the same account)
  auto_accept         = true

  tags = {
    Name = "app1-to-app3"
  }
}

#Peering Connection between the VPC in the primary region (TOKYO) and the VPC in the Fourth region (SAO PAULO).

# data "aws_subnet_ids" "app4" {
#   vpc_id = aws_vpc.app4_id
# }

resource "aws_vpc_peering_connection" "region_app4_to_tgw" {
  provider            = aws.ap-northeast-1
  vpc_id              = "aws_vpc.app1.id" # Replace with Primary Region VPC ID
  peer_vpc_id         = "aws_vpc.app4.id" # Replace with Region 4 VPC ID
  peer_region         = "sa-east-1"
  #peer_owner_id       = "123456789012" # Your AWS Account ID (All VPCs are in the same account)
  auto_accept         = true

  tags = {
    Name = "app1-to-app4"
  }
}

#Peering Connection between the VPC in the primary region (TOKYO) and the VPC in the Fifth region (AUSTRALIA).

# data "aws_subnet_ids" "app5" {
#   vpc_id = aws_vpc.app5_id
# }

resource "aws_vpc_peering_connection" "region_app5_to_tgw" {
  provider            = aws.ap-northeast-1
  vpc_id              = "aws_vpc.app1.id" # Replace with Primary Region VPC ID
  peer_vpc_id         = "aws_vpc.app5.id" # Replace with Region 5 VPC ID
  peer_region         = "ap-southeast-2"
  #peer_owner_id       = "123456789012" # Your AWS Account ID (All VPCs are in the same account)
  auto_accept         = true

  tags = {
    Name = "app1-to-app5"
  }
}

#Peering Connection between the VPC in the primary region (TOKYO) and the VPC in the Fourth region (HONG KONG).

# data "aws_subnet_ids" "app6" {
#   vpc_id = aws_vpc.app6_id
# }

resource "aws_vpc_peering_connection" "region_app6_to_tgw" {
  provider            = aws.ap-northeast-1
  vpc_id              = "aws_vpc.app1.id" # Replace with Primary Region VPC ID
  peer_vpc_id         = "aws_vpc.app6.id" # Replace with Region 6 VPC ID
  peer_region         = "ap-east-1"
  #peer_owner_id       = "123456789012" # Your AWS Account ID (All VPCs are in the same account)
  auto_accept         = true

  tags = {
    Name = "app1-to-app6"
  }
}

#Peering Connection between the VPC in the primary region (TOKYO) and the VPC in the Fourth region (CALIFORNIA).

# data "aws_subnet_ids" "app7" {
#   vpc_id = aws_vpc.app7_id
# }

resource "aws_vpc_peering_connection" "region_app7_to_tgw" {
  provider            = aws.ap-northeast-1
  vpc_id              = "aws_vpc.app1.id" # Replace with Primary Region VPC ID
  peer_vpc_id         = "aws_vpc.app7.id" # Replace with Region 7 VPC ID
  peer_region         = "us-west-1"
  #peer_owner_id       = "123456789012" # Your AWS Account ID (All VPCs are in the same account)
  auto_accept         = true

  tags = {
    Name = "app1-to-app7"
  }
}


# Create a route in the VPC in the primary region (TOKYO) to the VPC in the Second region (NEW YORK) via the Transit Gateway.

resource "aws_route" "app1_to_app2_via_tgw" {
  provider = aws.ap-northeast-1
  route_table_id         = "aws_route_table.private.id" # Replace with the VPC Route Table ID
  destination_cidr_block = "10.191.0.0/16" # Replace with CIDR block of Second Region VPC
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
}


# Create a route in the VPC in the primary region (TOKYO) to the VPC in the Third region (LONDON) via the Transit Gateway.

resource "aws_route" "app1_to_app3_via_tgw" {
  provider = aws.ap-northeast-1
  route_table_id         = "aws_route_table.private.id" # Replace with the VPC Route Table ID
  destination_cidr_block = "10.192.0.0/16" # Replace with CIDR block of Third Region VPC
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
}

# Create a route in the VPC in the primary region (TOKYO) to the VPC in the Fourth region (SAO PAULO) via the Transit Gateway.

resource "aws_route" "app1_to_app4_via_tgw" {
  provider = aws.ap-northeast-1
  route_table_id         = "aws_route_table.private.id" # Replace with the VPC Route Table ID
  destination_cidr_block = "10.193.0.0/16" # Replace with CIDR block of Fourth Region VPC
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
}

# Create a route in the VPC in the primary region (TOKYO) to the VPC in the Fifth region (AUSTRALIA) via the Transit Gateway.

resource "aws_route" "app1_to_app5_via_tgw" {
  provider = aws.ap-northeast-1
  route_table_id         = "aws_route_table.private.id" # Replace with the VPC Route Table ID
  destination_cidr_block = "10.194.0.0/16" # Replace with CIDR block of Fifth Region VPC
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
}

# Create a route in the VPC in the primary region (TOKYO) to the VPC in the Sixth region (HONG KONG) via the Transit Gateway.

resource "aws_route" "app1_to_app6_via_tgw" {
  provider = aws.ap-northeast-1
  route_table_id         = "aws_route_table.private.id" # Replace with the VPC Route Table ID
  destination_cidr_block = "10.195.0.0/16" # Replace with CIDR block of Sixth Region VPC
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
}

# Create a route in the VPC in the primary region (TOKYO) to the VPC in the Seventh region (CALIFORNIA) via the Transit Gateway.

resource "aws_route" "app1_to_app7_via_tgw" {
  provider = aws.ap-northeast-1
  route_table_id         = "aws_route_table.private.id" # Replace with the VPC Route Table ID
  destination_cidr_block = "10.196.0.0/16" # Replace with CIDR block of Seventh Region VPC
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
}

# Create a route in the VPC in the Second region (NEW YORK) to the VPC in the primary region (TOKYO) via the Transit Gateway.

resource "aws_route" "app2_to_app1_via_tgw" {
  provider = aws.us-east-1
  route_table_id         = "aws_route_table.private.id" # Replace with the VPC Route Table ID
  destination_cidr_block = "10.190.0.0/16" # Replace with CIDR block of Primary Region VPC  (TOKYO)
  vpc_peering_connection_id = aws_vpc_peering_connection.region_app2_to_tgw.id  # Replace with VPC Peering Connection ID
}

# Create a route in the VPC in the Third region (LONDON) to the VPC in the primary region (TOKYO) via the Transit Gateway.

resource "aws_route" "app3_to_app1_via_tgw" {
  provider = aws.eu-west-2
  route_table_id         = "aws_route_table.private.id" # Replace with the VPC Route Table ID
  destination_cidr_block = "10.190.0.0/16" # Replace with CIDR block of Primary Region VPC  (TOKYO)
  vpc_peering_connection_id = aws_vpc_peering_connection.region_app3_to_tgw.id  # Replace with VPC Peering Connection ID
}

# Create a route in the VPC in the Fourth region (SAO PAULO) to the VPC in the primary region (TOKYO) via the Transit Gateway.

resource "aws_route" "app4_to_app1_via_tgw" {
  provider = aws.sa-east-1
  route_table_id         = "aws_route_table.private.id" # Replace with the VPC Route Table ID
  destination_cidr_block = "10.190.0.0/16" # Replace with CIDR block of Primary Region VPC  (TOKYO)
  vpc_peering_connection_id = aws_vpc_peering_connection.region_app4_to_tgw.id  # Replace with VPC Peering Connection ID
}

# Create a route in the VPC in the Fifth region (AUSTRALIA) to the VPC in the primary region (TOKYO) via the Transit Gateway.

resource "aws_route" "app5_to_app1_via_tgw" {
  provider = aws.ap-southeast-2
  route_table_id         = "aws_route_table.private.id" # Replace with the VPC Route Table ID
  destination_cidr_block = "10.190.0.0/16" # Replace with CIDR block of Primary Region VPC  (TOKYO)
  vpc_peering_connection_id = aws_vpc_peering_connection.region_app5_to_tgw.id  # Replace with VPC Peering Connection ID
}

# Create a route in the VPC in the Sixth region (HONG KONG) to the VPC in the primary region (TOKYO) via the Transit Gateway.

resource "aws_route" "app6_to_app1_via_tgw" {
  provider = aws.ap-east-1
  route_table_id         = "aws_route_table.private.id" # Replace with the VPC Route Table ID
  destination_cidr_block = "10.190.0.0/16" # Replace with CIDR block of Primary Region VPC  (TOKYO)
  vpc_peering_connection_id = aws_vpc_peering_connection.region_app6_to_tgw.id  # Replace with VPC Peering Connection ID
}

# Create a route in the VPC in the Seventh region (CALIFORNIA) to the VPC in the primary region (TOKYO) via the Transit Gateway.

resource "aws_route" "app7_to_app1_via_tgw" {
  provider = aws.us-west-1
  route_table_id         = "aws_route_table.private.id" # Replace with the VPC Route Table ID
  destination_cidr_block = "10.190.0.0/16" # Replace with CIDR block of Primary Region VPC  (TOKYO)
  vpc_peering_connection_id = aws_vpc_peering_connection.region_app7_to_tgw.id  # Replace with VPC Peering Connection ID
}
