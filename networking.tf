resource "aws_vpc" "vpc_prod" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"

    tags = {
        Name = "vpc_prod"
    }
}

resource "aws_subnet" "prod_subnet" {
    vpc_id = aws_vpc.vpc_prod.id
    cidr_block = "10.0.1.0/24"

    tags = {
        Name = "subnet_prod"
    }
}