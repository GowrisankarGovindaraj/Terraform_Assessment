resource "aws_security_group" "sg_elb"{
    name = "Elastic Load Balancer SG"
    description = "assessment"
    vpc_id = "${aws_vpc.assessment_vpc.id}"

# Inbound Rules
# HTTP access from anywhere
ingress {
    from_port = 80
    to_port = 80
    protocal = "tcp"
    cidr_block = ["0.0.0.0/0"]
}

# Inbound Rules
# HTTPs access from anywhere
ingress {
    from_port = 443
    to_port = 443
    protocal = "tcp"
    cidr_block = ["0.0.0.0/0"]
}
# Inbound Rules
# SSH access from anywhere
ingress {
    from_port = 22
    to_port = 22
    protocal = "tcp"
    cidr_block = ["0.0.0.0/0"]
}

#outbound 
egress {
    from_port = 0
    to_port = 0
    protocal = "-1"
    cidr_block = ["0.0.0.0/0"]
}
}