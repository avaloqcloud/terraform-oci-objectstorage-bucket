resource "oci_objectstorage_bucket" "bucket" {
  for_each       = local.potential_bucket
  compartment_id = each.value.compartment_id
  name           = each.value.name
  namespace = each.value.namespace
 
}
