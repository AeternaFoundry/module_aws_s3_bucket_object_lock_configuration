output "s3_bucket_object_lock_configurations_id" {
  description = "Map of id values across all s3_bucket_object_lock_configurations, keyed the same as var.s3_bucket_object_lock_configurations"
  value       = { for k, v in aws_s3_bucket_object_lock_configuration.s3_bucket_object_lock_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3_bucket_object_lock_configurations_bucket" {
  description = "Map of bucket values across all s3_bucket_object_lock_configurations, keyed the same as var.s3_bucket_object_lock_configurations"
  value       = { for k, v in aws_s3_bucket_object_lock_configuration.s3_bucket_object_lock_configurations : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_bucket_object_lock_configurations_expected_bucket_owner" {
  description = "Map of expected_bucket_owner values across all s3_bucket_object_lock_configurations, keyed the same as var.s3_bucket_object_lock_configurations"
  value       = { for k, v in aws_s3_bucket_object_lock_configuration.s3_bucket_object_lock_configurations : k => v.expected_bucket_owner if v.expected_bucket_owner != null && length(v.expected_bucket_owner) > 0 }
}
output "s3_bucket_object_lock_configurations_object_lock_enabled" {
  description = "Map of object_lock_enabled values across all s3_bucket_object_lock_configurations, keyed the same as var.s3_bucket_object_lock_configurations"
  value       = { for k, v in aws_s3_bucket_object_lock_configuration.s3_bucket_object_lock_configurations : k => v.object_lock_enabled if v.object_lock_enabled != null && length(v.object_lock_enabled) > 0 }
}
output "s3_bucket_object_lock_configurations_region" {
  description = "Map of region values across all s3_bucket_object_lock_configurations, keyed the same as var.s3_bucket_object_lock_configurations"
  value       = { for k, v in aws_s3_bucket_object_lock_configuration.s3_bucket_object_lock_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3_bucket_object_lock_configurations_rule" {
  description = "Map of rule values across all s3_bucket_object_lock_configurations, keyed the same as var.s3_bucket_object_lock_configurations"
  value       = { for k, v in aws_s3_bucket_object_lock_configuration.s3_bucket_object_lock_configurations : k => one(v.rule) if v.rule != null && length(v.rule) > 0 }
}
output "s3_bucket_object_lock_configurations_token" {
  description = "Map of token values across all s3_bucket_object_lock_configurations, keyed the same as var.s3_bucket_object_lock_configurations"
  value       = { for k, v in aws_s3_bucket_object_lock_configuration.s3_bucket_object_lock_configurations : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}

