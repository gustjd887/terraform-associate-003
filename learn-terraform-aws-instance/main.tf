terraform {
  cloud {
    organization = "hs-kuberix"
    workspaces {
      name = "learn-tfc-aws"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-096ae19ebb730fc7d"
  instance_type = "t4g.nano"

  tags = {
    "Name" = var.instance_name
  }
}