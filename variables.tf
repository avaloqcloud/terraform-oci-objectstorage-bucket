variable "bucket" {
  description = "Bucket input object"
  type = object({
    # Required
    compartment_id = string,
    name           = string,
    namespace      = string,
    # Optional
    defined_tags  = optional(map(string)),
    freeform_tags = optional(map(string)),
  })
}

