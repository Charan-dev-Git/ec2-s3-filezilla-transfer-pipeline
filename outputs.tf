output "ec2_public_ip" {
  value = aws_instance.file_server.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.upload_bucket.bucket
}