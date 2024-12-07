provider "aws" {
  region = var.regions[0]
  alias = "first"
}

provider "aws" {
  region = var.regions[1]
  alias = "second" 
}

provider "aws" {
  region = var.regions[2]
  alias = "third"
}

provider "aws" {
  region = var.regions[3]
  alias = "fourth"
}

provider "aws" {
  region = var.regions[4]
  alias = "fifth"
}

provider "aws" {
  region = var.regions[5]
  alias = "sixth"
}

provider "aws" {
  region = var.regions[6]
  alias = "seventh"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
