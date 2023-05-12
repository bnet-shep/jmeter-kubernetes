terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.4.3"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.2.0"
    }
  }

  backend "s3" {
     bucket = "410935837022-terraform-backend"
     key    = "ctg/aws_load_test/terraform.tfstate"
     region = "us-east-1"
  }

  required_version = "~> 1.3"
}

