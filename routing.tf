resource "aws_route_table" "public-routing-table" {
    vpc_id = "${aws_vpc.myvpc.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.myvpcgw.id}"
    }
    tags = {
        Name = "Main_Routing_Table"
    }
}

resource "aws_route_table" "private-routing-table" {
    vpc_id = "${aws_vpc.myvpc.id}"

    tags = {
        Name = "Private-Routing-Table"
    }
}

resource "aws_route_table_association" "public-association" {
    subnet_id = "${aws_subnet.public-subnet.id}"
    route_table_id = "${aws_route_table.public-routing-table.id}"
}
resource "aws_route_table_association" "private-association" {
    subnet_id = "${aws_subnet.private-subnet.id}"
    route_table_id = "${aws_route_table.private-routing-table.id}"
}