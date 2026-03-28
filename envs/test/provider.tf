terraform {
  required_providers {
    vsphere = {
      source = "vmware/vsphere"
      version = "> 2.0"
    }
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "vsphere" {
  user                 = var.vsphere_username
  password             = var.vsphere_password
  vsphere_server       = "XX.XX.XX.XX"
  allow_unverified_ssl = true
}