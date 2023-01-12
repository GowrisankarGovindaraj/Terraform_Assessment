resource "aws_internet_gateway" "assessment_igw" {
    vpc_id = "${aws_vpc.assessment_vpc.id}"
}