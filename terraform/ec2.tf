terraform {
    backend "s3" {
        bucket = "tf-bucket18"
        key    = "terraform.tfstate"
        region = "eu-north-1"
    }
}



provider "aws" {
    region = var.region
}


resource "aws_instance" "myec2" {

    ami = var.myami
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = var.vpc_security_group_ids
    tags = {
        name = "myec2"
        env = "dev"
        Name = var.project_name
    }

}

# variable block syntax
