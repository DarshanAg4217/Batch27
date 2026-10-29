terraform {
    backend "s3" {
        bucket = "tf-bucket18"
        key    = "terraform.tfstate"
        region = "eu-north-1"
    }
}



provider "aws" {
    region = "eu-north-1"
}


resource "aws_instance" "myec2" {

    ami = "var.myami"
    instance_type = "var.instance_type"
    key_name = "id_rsa"
    vpc_security_group_ids = [ "sg-0ea173d8c56d3d66b" ]
    tags = {
        name = "myec2"
        env = "dev"
        Name = "spider"
    }

}

# variable block syntax
variable "myami" {
    default = "ami-08e7e754b2c895da7"
    description = "ami id for ec2 instance"   
}

variable "instance_type" {
    default = "t3.micro"
    description = "instance type for ec2 instance"   
}