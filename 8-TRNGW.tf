

provider "aws" {
  region = "us-east-1" # Primary region
}

provider "aws" {
  alias  = "us-west-1"
  region = "us-west-1" # Secondary region
}

resource "aws_ec2_transit_gateway" "east_tgw" {
  description = "Transit Gateway in us-east-1"
}

resource "aws_ec2_transit_gateway" "west_tgw" {
  provider    = aws.us-west-1
  description = "Transit Gateway in us-west-1"
}
























#Full Example

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-west-1"
  region = "us-west-1"
}

resource "aws_ec2_transit_gateway" "east_tgw" {
  description = "Transit Gateway in us-east-1"
}

resource "aws_ec2_transit_gateway" "west_tgw" {
  provider    = aws.us-west-1
  description = "Transit Gateway in us-west-1"
}

resource "aws_ec2_transit_gateway_peering_attachment" "tgw_peering" {
  transit_gateway_id      = aws_ec2_transit_gateway.east_tgw.id
  peer_transit_gateway_id = aws_ec2_transit_gateway.west_tgw.id
  peer_region             = "us-west-1"
  peer_account_id         = "YOUR_ACCOUNT_ID"
  tags = {
    Name = "east-to-west-peering"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "tgw_peering_accepter" {
  provider                     = aws.us-west-1
  transit_gateway_attachment_id = aws_ec2_transit_gateway_peering_attachment.tgw_peering.id
  tags = {
    Name = "west-to-east-peering"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

resource "aws_ec2_transit_gateway" "ap-northeast_tgw" {
  description = "Transit Gateway in ap-northeast-1"
}

resource "aws_ec2_transit_gateway" "us-east_tgw" {
  provider    = aws.us-east-1
  description = "Transit Gateway in us-east-1"
}

resource "aws_ec2_transit_gateway_peering_attachment" "tgw_peering" {
  transit_gateway_id      = aws_ec2_transit_gateway.ap-northeast-1_tgw.id
  peer_transit_gateway_id = aws_ec2_transit_gateway.us-east-1_tgw.id
  peer_region             = "us-east-1"
  peer_account_id         = "YOUR_ACCOUNT_ID"
  tags = {
    Name = "ap-northeast-1-to-us-east-1-peering"
  }
}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "tgw_peering_accepter" {
  provider                     = aws.us-east-1
  transit_gateway_attachment_id = aws_ec2_transit_gateway_peering_attachment.tgw_peering.id
  tags = {
    Name = "us-east-1-to-ap-northeast-1-peering"
  }
}


