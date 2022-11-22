variable "vpc_name" {}
variable "vpc_cidr" {}

resource "aws_vpc" "helloWorld" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}
