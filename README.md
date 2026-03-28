# terraform_bits

here i've created a vmware vsphere module that dynamically lets you create vms in vsphere according to a standard template, with allowances to create either windows or linux vms as needed contained in the template structure.

the module exists under the module folder and the envs folder represents the various server clusters that you may want to manage with separate terraform states. the servers.tf file contains the example server core data, and is really all that would need changed to add/remove servers. The groups.tf file represents ansible-groups that can be labeled in the servers.tf file. Along with generating the vms via terraform on vsphere, this will also generate an ansible inventory file based on the tpl template file that can be automatically or manually passed into an ansible instance to set up the vms post config.

with the existing config, the linux and windows templates in vsphere would need to have ssh on and configured and the base ansible user set up. the code in the envs/test folder could be copied to another envs folder to create a new cluster to manage and only the server/groups files would need changed

here the creds are stored in teh terraform.tfvars file as an example but in a serious environment, a more secure method of storing passwords would be necessary.
