resource "aws_route_table" "route"
{
    vpc_id = "{$aws_vpc.assessment_vpc.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.assessment_igw.id}"
    }
    tags = {
        Name = "Route to Internet"
    }
}
resource "aws_route_table_association" "rt1" {
    subnet_id = "${aws_subnet.publicsubnet-1.id}"
    route_table_id = "${aws_route_table.route.id}"
}
resource "aws_route_table_association" "rt2" {
    subnet_id = "${aws_subnet.publicsubnet-2.id}"
    route_table_id = "${aws_route_table.route.id}"
}