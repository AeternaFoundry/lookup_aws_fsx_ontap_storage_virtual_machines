variable "fsx_ontap_storage_virtual_machines_lookup" {
  description = <<EOT
Map of fsx_ontap_storage_virtual_machines_lookup, attributes below
Optional:
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    region = optional(string)
    filter = optional(list(object({
      name   = string
      values = list(string)
    })))
  }))
}

