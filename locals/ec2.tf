resource "aws_instance" "db" {
    count = length(var.instance_name)
    ami = local.ami_id
    vpc_security_group_ids = [local.sg_id]
    instance_type = local.instance_type
    tags = local.tags
}


