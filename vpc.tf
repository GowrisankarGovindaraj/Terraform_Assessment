resource "aws_vpc" "assessment_vpc"{
    cidr_block = "${var.vpc_cidr}"
tags = { name = "assessment_vpc" }
}
