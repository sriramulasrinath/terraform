resource "aws_instance" "expense" {
    count = length(var.instance_name)
    ami = var.image_id
    subnet_id     = "subnet-0da99f43c614ccace"
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.allow-ssh.id]
    instance_type = var.instance_name[count.index] == "Db" ? "t2.small":"t2.micro"

    tags = merge(
        var.common_tags,{
            Name = var.instance_name[count.index]
            Module = var.instance_name[count.index]
        }
    )
}


resource "aws_security_group" "allow-ssh" {
  name        = var.sg_name
  description = var.sg_description

  ingress {
    from_port        = var.ssh_protocol
    to_port          = var.ssh_protocol
    protocol         = var.protocol
    cidr_blocks      = var.allowing-cidr
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" #for all protocols like tcp http..
    cidr_blocks      = var.allowing-cidr
  }

  tags = {
    name = "allow-ssh"
    createdBy = "Srinath"
  }
}