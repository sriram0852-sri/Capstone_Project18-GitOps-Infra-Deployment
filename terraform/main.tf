
terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket = "project18-tfstate-590507089733-1795182108"
    key    = "project18/sriram0852-sri/terraform.tfstate"
    region = "eu-west-1"
  }

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
  bucket = "project18-gitops-demo-sriram0852-sri-590507089733"

  tags = {
    Name        = "Project18-GitOps"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}
