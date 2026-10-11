variable "s3_bucket_object_lock_configurations" {
  description = <<EOT
Map of s3_bucket_object_lock_configurations, attributes below
Required:
    - bucket
Optional:
    - expected_bucket_owner
    - object_lock_enabled
    - region
    - token
    - rule (block):
        - default_retention (required, block):
            - days (optional)
            - mode (optional)
            - years (optional)
EOT

  type = map(object({
    bucket                = string
    expected_bucket_owner = optional(string)
    object_lock_enabled   = optional(string)
    region                = optional(string)
    token                 = optional(string)
    rule = optional(object({
      default_retention = object({
        days  = optional(number)
        mode  = optional(string)
        years = optional(number)
      })
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

