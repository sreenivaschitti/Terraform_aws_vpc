resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "dedicated"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = local.vpc_final_tags
}


resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = local.igw_final_tags
}

resource "aws_subnet" "public_subnet" {
  count = lenghth(var.public_subnet_cidr)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr[count.index]

  tags = local.pubic_subnet_cidr_final_tas
}