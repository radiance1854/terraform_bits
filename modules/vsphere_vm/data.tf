data "vsphere_datacenter" "dc" {
  name = var.vsphere_dc_name
}

data "vsphere_datastore" "ds" {
  name = var.vsphere_ds_name
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_compute_cluster" "cl" {
  name = var.vsphere_cl_name
  datacenter_id	= data.vsphere_datacenter.dc.id
}

data "vsphere_network" "net" {
  name = var.vsphere_net_name
  datacenter_id	= data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "linux_template" {
  count = var.vsphere_vm_os_type == "linux" ? 1 : 0
  name = var.vsphere_vm_linux_template_name
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "windows_template" {
  count = var.vsphere_vm_os_type == "windows" ? 1 : 0
  name = var.vsphere_vm_windows_template_name
  datacenter_id = data.vsphere_datacenter.dc.id
}

locals {
  template = (
    var.vsphere_vm_os_type == "linux"
    ? data.vsphere_virtual_machine.linux_template
    : data.vsphere_virtual_machine.windows_template
  )
}
