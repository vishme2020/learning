data "aws_availability_zones" "available" {
  state = "available"
}
resource "aws_subnet" "PublicAZA" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = data.aws_availability_zones.available.names[0]
  cidr_block = var.Subnet-Public-AzA-CIDR
  tags = {
    Name = "2a-PublicSubnet"
  }
}
resource "aws_subnet" "PrivateAZA" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = data.aws_availability_zones.available.names[0]
  cidr_block = var.Subnet-Private-AzA-CIDR
  tags = {
    Name = "2a-PrivateSubnet"
  }
}
resource "aws_subnet" "PublicAZB" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = data.aws_availability_zones.available.names[1]
  cidr_block = var.Subnet-Public-AzB-CIDR
  tags = {
    Name = "2b-PublicSubnet"
  }
}
resource "aws_subnet" "PrivateAZB" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = data.aws_availability_zones.available.names[1]
  cidr_block = var.Subnet-Private-AzB-CIDR
  tags = {
    Name = "2b-PrivateSubnet"
  }
}
resource "aws_subnet" "PublicAZC" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = data.aws_availability_zones.available.names[2]
  cidr_block = var.Subnet-Public-AzC-CIDR
  tags = {
    Name = "2c-PublicSubnet"
  }
}
resource "aws_subnet" "PrivateAZC" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = data.aws_availability_zones.available.names[2]
  cidr_block = var.Subnet-Private-AzC-CIDR
  tags = {
    Name = "2c-PrivateSubnet"
  }
}
