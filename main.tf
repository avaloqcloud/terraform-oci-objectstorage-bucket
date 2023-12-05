resource "oci_objectstorage_bucket" "this" {
  for_each = local.potential_bucket
  # Required
  compartment_id = each.value.compartment_id
  name           = each.value.name
  namespace      = each.value.namespace
  # Optional
  defined_tags  = each.value.defined_tags
  freeform_tags = each.value.freeform_tags
}
