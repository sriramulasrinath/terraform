variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL AMI id"
}

variable "instance_type" {
  default = "t3.micro" 
}

variable "tags" {
    default = {
        name = "DB"
        Module = "DB"
        Project = "Expense"
        Environment = "Dev"
    }
}

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