provider "aws" {
  region = "us-west-2"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "fastapi-eks"
  cluster_version = "1.29"
  subnets         = ["subnet-xxxxxx"]
  vpc_id          = "vpc-xxxxxx"
}
