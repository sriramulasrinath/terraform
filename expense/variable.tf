# ec2 variables
variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL AMI id"
}

variable "instance_type" {
  default = "t2.micro" 
}

variable "instance_name" {
    default = ["Db","Backend", "Frontend"]
}

variable "common_tags" {
    default = {
        project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}

# sg-variables 
variable "sg_name" {
    default = "ssh_allow"
}

variable "sg_description" {
    default = "allowing-ssh-access"
}

variable "ssh_protocol" {
    default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "allowing-cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

#r53 variables 
variable "zone_id" {
    default = "Z04574161RQD51SRXG3P0"
}

variable "domain_name" {
    default = "srinath.online"
}