# SERVER GROUPS

locals {  
  linux_web_hosts = [
    for name, server in local.servers : 
    {
      name = name
      ip   = server.vsphere_vm_ip4_addr
    }
    if contains(server.ansible_groups, "linux-web")
  ]
  windows_basic_hosts = [
    for name, server in local.servers : 
    {
      name = name
      ip   = server.vsphere_vm_ip4_addr
    }
    if contains(server.ansible_groups, "windows-basic")
  ]
  linux_prom_hosts = [
    for name, server in local.servers : 
    {
      name = name
      ip   = server.vsphere_vm_ip4_addr
    }
    if contains(server.ansible_groups, "linux-prom")
  ]
  linux_lnms_hosts = [
    for name, server in local.servers : 
    {
      name = name
      ip   = server.vsphere_vm_ip4_addr
    }
    if contains(server.ansible_groups, "linux-lnms")
  ]
}