terraform {
  backend "s3" {
    bucket         = "tfstatebucketsl"
    key            = "terraform.tfstate"
    region         = "us-west-2"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}
