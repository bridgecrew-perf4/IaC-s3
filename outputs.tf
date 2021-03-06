
output "s3_bucket_id" {
    value = aws_s3_bucket.backup-s3.id
}

output "s3_hosted_zone_id" {
    value = aws_s3_bucket.backup-s3.hosted_zone_id
}
