data "oci_objectstorage_bucket" "existing_resource" {
  for_each = {
    for k, v in local.helper_resource_map : k => v
    if v.name != null
  }
  name = each.value.name
  #compartment_id = each.value.compartment_id
  namespace = each.value.namespace

 }
