data "aws_ami" "ami_id" {
  most_recent = true
  owners = [""]
  filter {
    name   = "name"
    values = ["RHEL-9-Devops-Practice"]
  }
}

data "aws_vpc" "default" {
  default =  true
}