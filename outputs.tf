output "bucket" {
  value       = local.output_bucket["resource"] # flatten using static map key
  description = "Registry output object"
}
