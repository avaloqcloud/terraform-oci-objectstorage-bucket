data "oci_objectstorage_bucket" "existing_bucket" {
  name      = var.bucket.name
  namespace = var.bucket.namespace
}


