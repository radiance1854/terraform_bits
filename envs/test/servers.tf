### SERVERS ###

locals {
  servers = {
    # Web server
    linux01 = {
      vsphere_dc_name                  = "XX"
      vsphere_ds_name                  = "XX"
      vsphere_cl_name                  = "XX"
      vsphere_net_name                 = "XX"

      vsphere_vm_name                  = "linux01"
      vsphere_vm_cpu_number            = 1
      vsphere_vm_ram                   = 1024
      vsphere_vm_disk_size_gb          = 50

      vsphere_vm_ip4_addr              = "XX.XX.XX.XX"
      vsphere_vm_subnet_mask           = XX
      vsphere_vm_ipv4_gateway_ip       = "XX.XX.XX.XX"

      vsphere_vm_os_type               = "linux" # "linux" or "windows"
      vsphere_vm_linux_template_name   = "linux_template"
      vsphere_vm_windows_template_name = "windows_template"

      vsphere_vm_linux_customization   = {
        host_name = "linux01"
        domain    = "domain.com"
      }
      vsphere_vm_windows_customization = null

      /*
      vsphere_vm_windows_customization = {
        computer_name  = "asdf"
        workgroup      = "asdf"
        admin_password = "asdf"
      }
      vsphere_vm_linux_customization = null
      */

      ansible_groups                   = ["linux-web"]
    }

    # LNMS server
    linux01 = {
      vsphere_dc_name                  = "XX"
      vsphere_ds_name                  = "XX"
      vsphere_cl_name                  = "XX"
      vsphere_net_name                 = "XX"

      vsphere_vm_name                  = "linux02"
      vsphere_vm_cpu_number            = 1
      vsphere_vm_ram                   = 1024
      vsphere_vm_disk_size_gb          = 50

      vsphere_vm_ip4_addr              = "XX.XX.XX.XX"
      vsphere_vm_subnet_mask           = XX
      vsphere_vm_ipv4_gateway_ip       = "XX.XX.XX.XX"

      vsphere_vm_os_type               = "linux" # "linux" or "windows"
      vsphere_vm_linux_template_name   = "linux_template"
      vsphere_vm_windows_template_name = "windows_template"

      vsphere_vm_linux_customization   = {
        host_name = "linux02"
        domain    = "domain.com"
      }
      vsphere_vm_windows_customization = null

      /*
      vsphere_vm_windows_customization = {
        computer_name  = "asdf"
        workgroup      = "asdf"
        admin_password = "asdf"
      }
      vsphere_vm_linux_customization = null
      */

      ansible_groups                   = ["linux-web"]
    }

    # Prom server
    linux01 = {
      vsphere_dc_name                  = "XX"
      vsphere_ds_name                  = "XX"
      vsphere_cl_name                  = "XX"
      vsphere_net_name                 = "XX"

      vsphere_vm_name                  = "linux03"
      vsphere_vm_cpu_number            = 1
      vsphere_vm_ram                   = 1024
      vsphere_vm_disk_size_gb          = 50

      vsphere_vm_ip4_addr              = "XX.XX.XX.XX"
      vsphere_vm_subnet_mask           = XX
      vsphere_vm_ipv4_gateway_ip       = "XX.XX.XX.XX"

      vsphere_vm_os_type               = "linux" # "linux" or "windows"
      vsphere_vm_linux_template_name   = "linux_template"
      vsphere_vm_windows_template_name = "windows_template"

      vsphere_vm_linux_customization   = {
        host_name = "linux03"
        domain    = "domain.com"
      }
      vsphere_vm_windows_customization = null

      /*
      vsphere_vm_windows_customization = {
        computer_name  = "asdf"
        workgroup      = "asdf"
        admin_password = "asdf"
      }
      vsphere_vm_linux_customization = null
      */

      ansible_groups                   = ["linux-web"]
    }

    # Windows server
    windows01 = {
      vsphere_dc_name                  = "XX"
      vsphere_ds_name                  = "XX"
      vsphere_cl_name                  = "XX"
      vsphere_net_name                 = "XX"

      vsphere_vm_name                  = "windows01"
      vsphere_vm_cpu_number            = 1
      vsphere_vm_ram                   = 1024
      vsphere_vm_disk_size_gb          = 50

      vsphere_vm_ip4_addr              = "XX.XX.XX.XX"
      vsphere_vm_subnet_mask           = XX
      vsphere_vm_ipv4_gateway_ip       = "XX.XX.XX.XX"

      vsphere_vm_os_type               = "windows" # "linux" or "windows"
      vsphere_vm_linux_template_name   = "linux_template"
      vsphere_vm_windows_template_name = "windows_template"

      /*
      vsphere_vm_linux_customization   = {
        host_name = "asdf"
        domain    = "asdf"
      }
      vsphere_vm_windows_customization = null
      */

      vsphere_vm_windows_customization = {
        computer_name  = "windows01"
        workgroup      = "XXXX"
        admin_password = "XXXX"
      }
      vsphere_vm_linux_customization = null

      ansible_groups                   = ["windows-basic"]
    }
  }
}