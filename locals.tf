locals {
  # Potential resources
  ## Registry
  potential_bucket = coalesce(data.oci_objectstorage_bucket.existing_bucket.name, "create") == "create" ? {
    "resource" = {
      # Required
      compartment_id = var.bucket.compartment_id
      name           = var.bucket.name
      namespace      = var.bucket.namespace
      # Optional
      defined_tags  = var.bucket.defined_tags
      freeform_tags = var.bucket.freeform_tags
    }
  } : {}

  # Outputs
  ## Registry
  prep_existing_bucket_output = coalesce(data.oci_objectstorage_bucket.existing_bucket.name, "create") != "create" ? {
    "resource" = {
      compartment_id = data.oci_objectstorage_bucket.existing_bucket.compartment_id
      defined_tags   = data.oci_objectstorage_bucket.existing_bucket.defined_tags
      freeform_tags  = data.oci_objectstorage_bucket.existing_bucket.freeform_tags
      name           = data.oci_objectstorage_bucket.existing_bucket.name
      namespace      = data.oci_objectstorage_bucket.existing_bucket.namespace
    }
  } : {}
  output_bucket = merge(oci_objectstorage_bucket.this, local.prep_existing_bucket_output)
}
