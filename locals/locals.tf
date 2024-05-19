locals {
  ami_id = "ami-090252cbe067a9e58"
  sg_id = "sg-00d8e884e38dae954"
  instance_type = var.instance_name == "db" ? "t2.small" : "t2.micro"
  tags = {
    Name = "Locals"
  }
}