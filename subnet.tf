resource "aws_subnet" "publicsubnet-1"{
    vpc_id = "${aws_vpc.assessment_vpc.id}"
    cidr_block = "${var.subnet1_cidr}"
    map_public_ip_on_launch = true
    availability_zone = "${var.az_1}"
    tags = {
        name = "publicsubnet-1"
    }
}

resource "aws_subnet" "publicsubnet-2"{
    vpc_id = "${aws_vpc.assessment_vpc.id}"
    cidr_block = "${var.subnet2_cidr}"
    map_public_ip_on_launch = true
    availability_zone = "${var.az_2}"
    tags = {
        name = "publicsubnet-2"
    }
}

resource "aws_subnet" "privatesubnet-1"{
    vpc_id = "${aws_vpc.assessment_vpc.id}"
    cidr_block = "${var.subnet3_cidr}"
    map_public_ip_on_launch = true
    availability_zone = "${var.az_1}"
    tags = {
        name = "privatesubnet-1"
    }
}

resource "aws_subnet" "privatesubnet-2"{
    vpc_id = "${aws_vpc.assessment_vpc.id}"
    cidr_block = "${var.subnet4_cidr}"
    map_public_ip_on_launch = true
    availability_zone = "${var.az_2}"
    tags = {
        name = "privatesubnet-2"
    }
}