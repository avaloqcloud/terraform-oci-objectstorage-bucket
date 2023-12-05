variable "bucket" {
  description = "Bucket input object"
  type = object({
    bucket_id	     = optional(string),
    bucket_name      = string,
    compartment_ocid = string,
    bucket_namespace = string,
    defined_tags  = optional(map(string)),
    freeform_tags = optional(map(string)),
  })
}


