locals {
 helper_resource_map = {
    "resource" = { # static key only used internally so that we can flatten input and output
      #bucket_id = var.bucket.bucket_id != null ? var.bucket.bucket_id : null
      name = var.bucket.bucket_name != null ? var.bucket.bucket_name : null # can either be set in input or not
      compartment_id = var.bucket.compartment_ocid
      namespace = var.bucket.bucket_namespace
   }
  }
  
  potential_bucket = length(data.oci_objectstorage_bucket.existing_resource) < 1 ? local.helper_resource_map != null ? {
    for flat_bucket in flatten([
     for k, v in local.helper_resource_map : {
	#bucket_id	   = null 
	k                   = k
        compartment_id      = v.compartment_id
        name       	 = v.name
        namespace          = v.namespace
     }
    ]) : flat_bucket.k => flat_bucket 
  } : {} : {}

  # Either returns the existing or created resource
  output_bucket = oci_objectstorage_bucket.bucket
  #output_bucket = merge(oci_objectstorage_bucket.bucket, data.oci_objectstorage_bucket.existing_resource)
}
