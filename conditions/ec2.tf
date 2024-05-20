resource "aws_instance" "DB" {
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow-ssh.id]
    instance_type =  var.instance_name == "DB"? "t3.small" : "t3.micro"
}


resource "aws_security_group" "allow-ssh" {
  name        = "allow_ssh"
  description = "Allowing SSH access"

  ingress {
    from_port        = var.ssh_protocol
    to_port          = var.ssh_protocol
    protocol         = var.protocol
    cidr_blocks      = var.allowing-cidr
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"#for all protocols like tcp http..
    cidr_blocks      = var.allowing-cidr  
  }

  tags = {
    name = "allow-ssh"
    createdBy = "Srinath"
  }
}