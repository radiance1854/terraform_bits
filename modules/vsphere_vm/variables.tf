variable "vsphere_dc_name" {
  description = "vSphere DC name"
}

variable "vsphere_ds_name" {
  description = "vSphere DS name"
}

variable "vsphere_cl_name" {
  description = "target vSphere cluster name"
}

variable "vsphere_net_name" {
  description = "target vSphere network name"
}



variable "vsphere_vm_name" {
  description = "display name in vmware"
}

variable "vsphere_vm_cpu_number" {
  description = "cpus"
}

variable "vsphere_vm_ram" {
  description = "ram"
}

variable "vsphere_vm_disk_size_gb" {
  description = "disk size"
}

variable "vsphere_vm_ip4_addr" {
  description = "IP addr"
}

variable "vsphere_vm_subnet_mask" {
  description = "IP address cidr subnet mask number"
}

variable "vsphere_vm_ipv4_gateway_ip" {
  description = "IP gateway IP address"
}





variable "vsphere_vm_os_type" {
  validation {
    condition = contains(["linux", "windows"], var.vsphere_vm_os_type)
    error_message = "os_type must be linux or windows."
  }
}

variable "vsphere_vm_linux_template_name" {
  description = "template to build linux vms from"
}

variable "vsphere_vm_windows_template_name" {
  description = "template to build windows vms from"
}

variable "vsphere_vm_linux_customization" {
  type = object({
    host_name = string
    domain    = string
  })
  default = null
}

variable "vsphere_vm_windows_customization" {
  type = object({
    computer_name  = string
    workgroup      = string
    admin_password = string
  })
  default = null
}

variable "ansible_groups" {
  type = list(string)
  default = []
}