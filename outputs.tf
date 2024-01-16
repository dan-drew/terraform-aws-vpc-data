output "id" {
  value = data.aws_vpc.vpc.id
}

output "name" {
  value = var.name
}

output "private_subnet_ids" {
  value = data.aws_subnets.private_subnets.ids
}

output "public_subnet_ids" {
  value = data.aws_subnets.public_subnets.ids
}

output "cidr_block" {
  value = data.aws_vpc.vpc.cidr_block
}
