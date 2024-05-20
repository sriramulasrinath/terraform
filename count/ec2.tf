resource "aws_instance" "expense" {
    ami = "ami-090252cbe067a9e58"
    count = length(var.instance_name)
    vpc_security_group_ids = [aws_security_group.allow-ssh.id]
    instance_type = var.instance_name[count.index] == "Db" ? "t3.small" : "t3.micro"

    tags =  {
        Name = var.instance_name[count.index]
    }
}


resource "aws_security_group" "allow-ssh" {
  name        = "allow_ssh"
  description = "Allowing SSH access"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" #for all protocols like tcp http..
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    name = "allow-ssh"
    createdBy = "Srinath"
  }
}