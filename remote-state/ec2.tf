resource "aws_instance" "expense" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-00d8e884e38dae954"]
    instance_type = "t2.micro"
    
    tags = {
      Name = "db"
    }
}