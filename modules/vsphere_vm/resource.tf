resource "vsphere_virtual_machine" "vm" {
  name             = var.vsphere_vm_name
  resource_pool_id = data.vsphere_compute_cluster.cl.resource_pool_id
  datastore_id     = data.vsphere_datastore.ds.id
  num_cpus         = var.vsphere_vm_cpu_number
  memory           = var.vsphere_vm_ram
  firmware         = "efi"
  guest_id         = local.template[0].guest_id
  scsi_type        = local.template[0].scsi_type
  network_interface {
    network_id   = data.vsphere_network.net.id
    adapter_type = local.template[0].network_interface_types[0]
  }
  disk {
    label            = "disk0"
    size             = var.vsphere_vm_disk_size_gb
    thin_provisioned = local.template[0].disks.0.thin_provisioned
  }
  clone {
    template_uuid = local.template[0].id
    customize {
      ipv4_gateway = var.vsphere_vm_ipv4_gateway_ip
      network_interface {
        ipv4_address = var.vsphere_vm_ip4_addr
        ipv4_netmask = var.vsphere_vm_subnet_mask
      }
      dynamic "windows_options" {
        for_each = var.vsphere_vm_os_type == "windows" ? [var.vsphere_vm_windows_customization] : []
        content {
          computer_name  = windows_options.value.computer_name
          workgroup      = windows_options.value.workgroup
          admin_password = windows_options.value.admin_password
        }
      }
      dynamic "linux_options" {
        for_each = var.vsphere_vm_os_type == "linux" ? [var.vsphere_vm_linux_customization] : []
        content {
          host_name = linux_options.value.host_name
          domain    = linux_options.value.domain
        }
      }
    }
  }
}
