provider "aws" {
  region = "ap-northeast-1"
  alias = "ap-northeast-1"
}

provider "aws" {
  region = "us-east-1"
  alias = "us-east-1" 
}

provider "aws" {
  region = "eu-west-2"
  alias = "eu-west-2"
}

provider "aws" {
  region = "sa-east-1"
  alias = "sa-east-1"
}

provider "aws" {
  region = "ap-southeast-2"
  alias = "ap-southeast-2"
}

provider "aws" {
  region = "ap-east-1"
  alias = "ap-east-1"
}

provider "aws" {
  region = "us-west-1"
  alias = "us-west-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
