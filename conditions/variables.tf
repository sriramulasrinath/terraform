variable "image_id" {
    default = "ami-090252cbe067a9e58"
}

variable "instance_name" {
    default = "DB"
}

variable "instance_type" {
    default = "t2.micro"
}
variable "protocol" {
    default = "tcp"
}

variable "ssh_protocol" {
    default = 0
}
variable "allowing-cidr" {
    type = list(string)
    default = ["0.0.0.0/0"] 
}