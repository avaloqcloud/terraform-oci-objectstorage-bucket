locals {

  potential_bucket = coalesce(data.oci_objectstorage_bucket.existing_resource.name, "create") == "create" ? {
    "resource" = {
      # Required
      compartment_id = var.bucket.compartment_ocid
      name           = var.bucket.bucket_name
      namespace      = var.bucket.bucket_namespace
      # Optional
      defined_tags  = var.bucket.defined_tags
      freeform_tags = var.bucket.freeform_tags
      }
    } : {}
  
  
  prep_existing_bucket_output = coalesce(data.oci_objectstorage_bucket.existing_resource.name, "create") != "create" ? {
    "resource" = {
      compartment_id = data.oci_objectstorage_bucket.existing_resource.compartment_id
      defined_tags   = data.oci_objectstorage_bucket.existing_resource.defined_tags
      freeform_tags  = data.oci_objectstorage_bucket.existing_resource.freeform_tags
      name           = data.oci_objectstorage_bucket.existing_resource.name
      namespace      = data.oci_objectstorage_bucket.existing_resource.namespace
    }
  } : {}
  ## Key
   # Either returns the existing or created resource
  output_bucket = merge(oci_objectstorage_bucket.bucket, data.oci_objectstorage_bucket.existing_resource)
}
