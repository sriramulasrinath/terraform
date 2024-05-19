resource "aws_security_group" "allow-ports" {
  name        = "allow_ports"
  description = "Allowing ports 22,80,8080,3306 access"

  dynamic "ingress" {
    for_each = var.inbound_rules
    content {
        from_port        = ingress.value["port"]
        to_port          = ingress.value["port"]
        protocol         = ingress.value["protocol"]
        cidr_blocks      = ingress.value["allow_cidr"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" #for all protocols like tcp http..
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
        Name = "allow_ports"
        CreatedBy = "Srinath"
    }
}