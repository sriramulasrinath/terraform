resource "aws_instance" "expense" {
    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids =  "sg-0dc8ba8e38b8d1861"
    instance_type = "t2.micro"
    tags = {
        Name = "data-source-practice "
    } 
}
