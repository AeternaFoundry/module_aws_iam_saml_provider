variable "iam_saml_providers" {
  description = <<EOT
Map of iam_saml_providers, attributes below
Required:
    - name
    - saml_metadata_document
Optional:
    - tags
    - tags_all
EOT

  type = map(object({
    name                   = string
    saml_metadata_document = string
    tags                   = optional(map(string))
    tags_all               = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iam_saml_providers : (
        length(v.saml_metadata_document) >= 1000 && length(v.saml_metadata_document) <= 10000000
      )
    ])
    error_message = "must be between 1000 and 10000000 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

