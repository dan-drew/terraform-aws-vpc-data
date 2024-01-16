data "aws_vpc" "vpc" {
  tags = {
    Name = coalesce(var.name, terraform.workspace)
  }
}

data "aws_subnets" "public_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc.id]
  }
  tags = {
    "subnet_type" = "public"
  }
}

data "aws_subnets" "private_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc.id]
  }
  tags = {
    "subnet_type" = "private"
  }
}
