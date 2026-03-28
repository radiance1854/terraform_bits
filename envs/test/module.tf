module "servers" {
  for_each = local.servers
  source   = "../../modules/vsphere_vm"

  vsphere_dc_name                  = each.value.vsphere_dc_name
  vsphere_ds_name                  = each.value.vsphere_ds_name
  vsphere_cl_name                  = each.value.vsphere_cl_name
  vsphere_net_name                 = each.value.vsphere_net_name

  vsphere_vm_name                  = each.value.vsphere_vm_name
  vsphere_vm_cpu_number            = each.value.vsphere_vm_cpu_number
  vsphere_vm_ram                   = each.value.vsphere_vm_ram
  vsphere_vm_disk_size_gb          = each.value.vsphere_vm_disk_size_gb

  vsphere_vm_ip4_addr              = each.value.vsphere_vm_ip4_addr
  vsphere_vm_subnet_mask           = each.value.vsphere_vm_subnet_mask
  vsphere_vm_ipv4_gateway_ip       = each.value.vsphere_vm_ipv4_gateway_ip

  vsphere_vm_os_type               = each.value.vsphere_vm_os_type

  vsphere_vm_linux_template_name   = each.value.vsphere_vm_linux_template_name
  vsphere_vm_windows_template_name = each.value.vsphere_vm_windows_template_name

  vsphere_vm_linux_customization   = each.value.vsphere_vm_linux_customization
  vsphere_vm_windows_customization = each.value.vsphere_vm_windows_customization

  ansible_groups                   = each.value.ansible_groups
}
