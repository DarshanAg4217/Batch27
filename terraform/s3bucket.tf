# s3 bucket creation and versioning and encryption configuration

resource "aws_s3_bucket" "mybucket" {
    bucket = "mybucket-terraform-4217"
    tags = {
        Name = "mybucket-terraform-4217"
        env = "dev"
    }
}

resource "aws_s3_bucket_versioning" "prod_versioning" {

    bucket = aws_s3_bucket.mybucket.id
    versioning_configuration {
        status = "Enabled"
    }
  
}

resource "aws_s3_bucket_server_side_encryption_configuration" "prod_sse" {
    bucket = aws_s3_bucket.mybucket.id
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = "AES256"
        }
    }
}
