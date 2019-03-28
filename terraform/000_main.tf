provider "aws" {
  region  = "eu-west-1"
  profile = "xpops-lab"
}

terraform {
  required_version = "~> 0.11.7"

  backend "s3" {
    profile = "xpops-lab"
    region  = "eu-west-1"

    bucket               = "xpops-lab"
    workspace_key_prefix = "terraform-states"
    key                  = "terraform-xpops-lab.tfstate"

    dynamodb_table = "terraform-lock"
  }
}
