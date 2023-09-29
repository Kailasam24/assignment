resource "aws_security_group" "my_security_group" {
    name ="allow_all"
    description ="Allow all inbound traffic"
    vpc_id ="${aws_vpc.myvpc.id}"
    
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
