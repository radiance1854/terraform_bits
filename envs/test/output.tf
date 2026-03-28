output "terraform_servers" {
  value = {
    for name, server in module.servers :
    name => {
      ansible_host     = server.vsphere_vm_ip
      ansible_groups   = server.ansible_groups
      #ansible_hostname = server.vsphere_vm_host_name
    }
  }
}
