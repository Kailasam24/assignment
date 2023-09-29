resource "aws_instance" "my_instance" {
  ami             = "${var.ami}"  # Specify your desired AMI
  instance_type   = "${var.instance_type}"
  key_name        = "${var.key_name}"  # Specify your key pair name
  subnet_id       = "${aws_subnet.public-subnet.id}"
  vpc_security_group_ids = [ "${aws_security_group.my_security_group.id}"]
  associate_public_ip_address = true
  root_block_device {
    volume_size = "${var.volume_size}"
    volume_type = "${var.volume_type}"
  }

  tags = {
    Name    = "AssignmentInstance"
    purpose = "Assignment"
  }
}
