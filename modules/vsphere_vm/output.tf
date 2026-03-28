output "vsphere_vm_ip" {
  value = vsphere_virtual_machine.vm.default_ip_address
}

output "vsphere_vm_host_name" {
  value = can(var.vsphere_vm_linux_customization) ? var.vsphere_vm_linux_customization.host_name : var.vsphere_vm_windows_customization.computer_name
}

output "ansible_groups" {
  value = var.ansible_groups
}