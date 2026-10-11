resource "aws_s3_bucket_object_lock_configuration" "s3_bucket_object_lock_configurations" {
  for_each = var.s3_bucket_object_lock_configurations

  bucket                = each.value.bucket
  expected_bucket_owner = each.value.expected_bucket_owner
  object_lock_enabled   = each.value.object_lock_enabled
  region                = each.value.region
  token                 = each.value.token

  dynamic "rule" {
    for_each = each.value.rule != null ? [each.value.rule] : []
    content {
      default_retention {
        days  = rule.value.default_retention.days
        mode  = rule.value.default_retention.mode
        years = rule.value.default_retention.years
      }
    }
  }
}

