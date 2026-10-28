provider "aws" {
    region = "eu-north-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-08e7e754b2c895da7"
    instance_type = "t3.micro"
    key_name = "id_rsa"
    vpc_security_group_ids = [ "sg-0ea173d8c56d3d66b" ]

}