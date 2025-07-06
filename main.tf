resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = var.enable_dns_hostnames
    tags = merge (
      var.common_tags,
      var.vpc_tags,
      {
        Name = local.resource
      }
    )
}

resource "aws_internet_gateway" "main"{
    vpc_id = aws_vpc.main.id
    tags = merge (
      var.common_tags,
      var.vpc_tags,
      {
        Name = local.resource
      }
    )

}

resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidrs)
  vpc_id = aws_vpc_.main.id
  cidr_block = var.public_subnet_cidrs[count.index]
  availability_zone = az.names[count.index]
  tags = merge(
    var.common_tags,
    var.public_subnet_tags,
    {
      Name = "${local.resource}-public-${local.az_names[count.index]}"
    }
  )
}
