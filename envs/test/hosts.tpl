[linux_web]
%{ for host in linux_web_hosts ~}
${host.name} ansible_host=${host.ip}
%{ endfor ~}

[linux_lnms]
%{ for host in linux_lnms_hosts ~}
${host.name} ansible_host=${host.ip}
%{ endfor ~}

[linux_prom]
%{ for host in linux_prom_hosts ~}
${host.name} ansible_host=${host.ip}
%{ endfor ~}

[windows_basic]
%{ for host in windows_basic_hosts ~}
${host.name} ansible_host=${host.ip}
%{ endfor ~}