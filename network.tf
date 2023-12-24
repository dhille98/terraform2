
resource "aws_vpc" "network" {
  cidr_block       = var.vpc_cdir
  instance_tenancy = "default"

  tags = {
    Name = "network"
  }
}
resource "aws_subnet" "subnets" {
  count      = length(var.subnet_names)
  vpc_id     = aws_vpc.network.id
  cidr_block = cidrsubnet(var.vpc_cdir, 8, count.index)

  tags = {
    Name = var.subnet_names[count.index]
  }
}
