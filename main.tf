terraform {
  required_version = ">= 0.11.14"
}

provider "aws" {
  version = "~> 2.13"
  region  = "eu-west-1"
}
