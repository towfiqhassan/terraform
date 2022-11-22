#this is a very simple example of module
provider "aws" {
  region = "us-east-2"
}

module "example_module_1" {
  source  = "./module_th"
  vpc_name = "POTATO-VPC"
  vpc_cidr = "10.10.0.0/16"
}
