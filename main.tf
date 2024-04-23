resource "aws_s3_bucket" "website" {

  bucket = "${var.bucket_name}-${data.aws_caller_identity.current.account_id}-${var.aws_region}"

}