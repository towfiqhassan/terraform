provider "aws" {
  region = "us-east-2"
}

module "vpc-maker" {
  source = "./my-modules/VPC"
  th-cidr = "10.20.0.0/16"
  th-vpc-name = "ZUKHINI-MAN"
}

module "EC2-maker" {
  source = "./my-modules/EC2"

}

output "out-show-vpc-id" {
  value = module.vpc-maker.vpc-id
}