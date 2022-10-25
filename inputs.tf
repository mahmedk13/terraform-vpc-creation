variable "region"{

    type = string
    description = "(optional) this is my vpc"
    default="ap-south-1"
}


variable "cidr_block"{
    type    = string
    default = "192.168.0.0/16"
}



variable "subnet_name_tags" {
    type    = list(string)
}

variable "subnet_azs" {
    type    = list(string)
}

# variable "subnet_cidrs" {
#     type    = list(string)
# }

