output "iam_saml_providers_id" {
  description = "Map of id values across all iam_saml_providers, keyed the same as var.iam_saml_providers"
  value       = { for k, v in aws_iam_saml_provider.iam_saml_providers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_saml_providers_arn" {
  description = "Map of arn values across all iam_saml_providers, keyed the same as var.iam_saml_providers"
  value       = { for k, v in aws_iam_saml_provider.iam_saml_providers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "iam_saml_providers_name" {
  description = "Map of name values across all iam_saml_providers, keyed the same as var.iam_saml_providers"
  value       = { for k, v in aws_iam_saml_provider.iam_saml_providers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_saml_providers_saml_metadata_document" {
  description = "Map of saml_metadata_document values across all iam_saml_providers, keyed the same as var.iam_saml_providers"
  value       = { for k, v in aws_iam_saml_provider.iam_saml_providers : k => v.saml_metadata_document if v.saml_metadata_document != null && length(v.saml_metadata_document) > 0 }
}
output "iam_saml_providers_saml_provider_uuid" {
  description = "Map of saml_provider_uuid values across all iam_saml_providers, keyed the same as var.iam_saml_providers"
  value       = { for k, v in aws_iam_saml_provider.iam_saml_providers : k => v.saml_provider_uuid if v.saml_provider_uuid != null && length(v.saml_provider_uuid) > 0 }
}
output "iam_saml_providers_tags" {
  description = "Map of tags values across all iam_saml_providers, keyed the same as var.iam_saml_providers"
  value       = { for k, v in aws_iam_saml_provider.iam_saml_providers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "iam_saml_providers_tags_all" {
  description = "Map of tags_all values across all iam_saml_providers, keyed the same as var.iam_saml_providers"
  value       = { for k, v in aws_iam_saml_provider.iam_saml_providers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "iam_saml_providers_valid_until" {
  description = "Map of valid_until values across all iam_saml_providers, keyed the same as var.iam_saml_providers"
  value       = { for k, v in aws_iam_saml_provider.iam_saml_providers : k => v.valid_until if v.valid_until != null && length(v.valid_until) > 0 }
}

