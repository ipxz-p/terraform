resource "aws_s3_bucket" "tf_state" {
  bucket = "terraform-state-bucket-ipxz-test-1"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.tf_state.id

  versioning_configuration {
    status = "Enabled"
  }
}