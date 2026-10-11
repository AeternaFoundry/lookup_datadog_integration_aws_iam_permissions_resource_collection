output "integration_aws_iam_permissions_resource_collection_lookup_id" {
  description = "Map of id values across all integration_aws_iam_permissions_resource_collection_lookup, keyed the same as var.integration_aws_iam_permissions_resource_collection_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_integration_aws_iam_permissions_resource_collection.integration_aws_iam_permissions_resource_collection_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integration_aws_iam_permissions_resource_collection_lookup_iam_permissions" {
  description = "Map of iam_permissions values across all integration_aws_iam_permissions_resource_collection_lookup, keyed the same as var.integration_aws_iam_permissions_resource_collection_lookup except keys with no iam_permissions are omitted"
  value       = { for k, v in data.datadog_integration_aws_iam_permissions_resource_collection.integration_aws_iam_permissions_resource_collection_lookup : k => v.iam_permissions if v.iam_permissions != null && length(v.iam_permissions) > 0 }
}

