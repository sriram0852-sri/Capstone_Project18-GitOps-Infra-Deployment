
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "gitops_bucket" {
  bucket = "project18-gitops-infra-590507089733"

  tags = {
    Name        = "Project18-GitOps"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}
