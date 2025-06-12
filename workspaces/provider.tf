terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  backend "s3" {
    bucket = "bharath-remote-state"
    key    = "workspace-demo"
    region = "us-east-1"
    # dynamodb_table = "bharath-remote-state"
    encrypt        = true
    use_lockfile = true
    
  }
}

provider "aws" {
  # Configuration options
}