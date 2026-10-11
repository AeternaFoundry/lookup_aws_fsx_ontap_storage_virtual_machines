data "aws_fsx_ontap_storage_virtual_machines" "fsx_ontap_storage_virtual_machines_lookup" {
  for_each = var.fsx_ontap_storage_virtual_machines_lookup

  region = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

