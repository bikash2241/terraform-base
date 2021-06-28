
resource "aws_s3_bucket" "devts_bkt" {
  bucket = var.bucket_name
  acl    = var.s3_acl

tags = {
    Name = var.project
  }

}

resource "aws_s3_bucket_object" "index_file_upload" {
  key        = var.key_name
  bucket     = aws_s3_bucket.devts_bkt.id
  source     = var.source_path
}

