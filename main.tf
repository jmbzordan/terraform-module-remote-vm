terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.67.0"
    }
  }

  # Define backend de remote state em bucket S3
  backend "s3" {
    bucket = "johnz-remote-state"
    key = "aws-vm-remote-module/terraform.tfstate"
    region = "sa-east-1"
  }
}