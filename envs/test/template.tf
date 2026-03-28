resource "local_file" "ansible_inventory" {
  content = templatefile("./hosts.tpl",
  {
    linux_web_hosts      = local.linux_web_hosts
    linux_lnms_hosts       = local.linux_lnms_hosts
    linux_prom_hosts       = local.linux_prom_hosts
    windows_basic_hosts    = local.windows_basic_hosts

  })

  filename = "../../../ansible/inventory/hosts.cfg"
}