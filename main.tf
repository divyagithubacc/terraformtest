variable "bucket_acl" {
  description = "ACL for the bucket"
  default     = "private"
}

resource "aws_s3_bucket" "bucket" {
  bucket   = "testbucketwithjenkins1"
  acl      = "${var.bucket_acl}"

  versioning {
    enabled = true
  }
}
