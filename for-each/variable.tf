variable "instance_name" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}


variable "common_tags" {
     type = map
     default = {
        Project = "Expense"
        Environment = "Dev"
    }
}

variable "zone_id" {
    default = "Z097760412NZYP4P1P7PG"
}

variable "domain_name" {
    default = "srinath.online"
}


