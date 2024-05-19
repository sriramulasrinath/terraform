resource "aws_instance" "db" {
    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-00d8e884e38dae954"]
    instance_type = "t2.micro"
    tags = {
        Name = "data-source-practice "
    } 
}
