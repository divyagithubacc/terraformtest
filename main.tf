variable "bucket_acl" {
  description = "ACL for the bucket"
  default     = "private"
}

resource "aws_s3_bucket" "bucket" {
  bucket   = "testbucketwithjenkins"
  acl      = "${var.bucket_acl}"

  versioning {
    enabled = true
  }
}
