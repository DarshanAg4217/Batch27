variable "myami" {
    default = "ami-08e7e754b2c895da7"
    description = "ami id for ec2 instance"   
}

variable "instance_type" {
    default = "t3.micro"
    description = "instance type for ec2 instance"   
}

variable "key_name" {
    default = "id_rsa"
    description = "key name for ec2 instance"   
}

variable "vpc_security_group_ids" {
    default = ["sg-0ea173d8c56d3d66b"]
    description = "security group ids for ec2 instance"   
}

variable "project_name" {
    default = "myproject_name"
    description = "project name for tagging resources"   
}

variable region {
    default = "eu-north-1"
    description = "region for aws provider"   
}