data "oci_objectstorage_bucket" "existing_resource" {
  
  name = var.bucket.bucket_name #each.value.name
  namespace = var.bucket.bucket_namespace #each.value.namespace
}
