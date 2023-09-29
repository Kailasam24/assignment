resource "aws_subnet" "public-subnet" {
    vpc_id = "${aws_vpc.myvpc.id}"
    cidr_block = "${var.public_subnet_cidr}"
    availability_zone = "us-east-1a"
    tags = {
        Name = "${var.public_subnet_name}"
    }
}

resource "aws_subnet" "private-subnet" {
    vpc_id = "${aws_vpc.myvpc.id}"
    cidr_block = "${var.private_subnet_cidr}"
    availability_zone = "us-east-1a"
    tags = {
        Name = "${var.private_subnet_name}"
    }
}