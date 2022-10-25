resource "aws_vpc" "myvpc" {

    cidr_block = var.cidr_block

    tags = {
        "Name"="vpc"
    }
}


resource "aws_subnet" "mysubnet" {
    count       = length(var.subnet_name_tags)
    #cidr_block  = var.subnet_cidrs[count.index]
    cidr_block = cidrsubnet(var.cidr_block, 8, count.index)
    vpc_id      = aws_vpc.myvpc.id
    availability_zone = var.subnet_azs[count.index]
    tags = {
        "Name"  = var.subnet_name_tags[count.index]
    }

    depends_on = [
      aws_vpc.myvpc
    ]
 
}