resource "aws_vpc" "myvpc" {
    cidr_block = "${var.cidr_block}"
    enable_dns_hostnames = true
    tags = {
        Name = "${var.vpc_name}"
	    Owner = "Rupa Kailasam"
    }
} 

resource "aws_internet_gateway" "myvpcgw" {
    vpc_id = "${aws_vpc.myvpc.id}"
	tags = {
        Name = "${var.IGW_name}"
    }
}

