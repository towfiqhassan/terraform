
resource "aws_vpc" "sample" {
  cidr_block = var.th-cidr

  tags = {
    Name = var.th-vpc-name
  }
}
