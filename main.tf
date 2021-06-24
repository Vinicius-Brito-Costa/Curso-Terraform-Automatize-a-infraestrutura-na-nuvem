terraform {
  required_version = "1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.46.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-225894074166"
    key     = "dev/terraform.tfstate"
    region  = "sa-east-1"
    profile = "terraform"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

provider "aws" {
  alias   = "us-east-2"
  region  = "us-east-2"
  profile = var.aws_profile
}