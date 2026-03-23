terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-ipxz-test-1"
    key            = "dev/terraform.tfstate"
    region         = "ap-southeast-7"
    use_lockfile = true
    encrypt      = true
  }
}

provider "aws" {
  region = "ap-southeast-7"
}