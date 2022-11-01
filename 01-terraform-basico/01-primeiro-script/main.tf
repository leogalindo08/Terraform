terraform {
  required_version = "1.3.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "4.37.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "terraform"
}

resource "aws_s3_bucket" "myBucket" {
  bucket = "my1236-84asdf-ff-1-a-1a"

  tags = var.tags
}

resource "aws_ssm_parameter" "clientId" {
  name        = "clientId"
  description = "Client ID do ARN: ${aws_s3_bucket.myBucket.arn}"
  type        = "String"
  value       = var.client_id
}
