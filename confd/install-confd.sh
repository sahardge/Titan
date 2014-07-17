#!/bin/bash
wget -O confd_0.3.0_linux_amd64.tar.gz https://github.com/kelseyhightower/confd/releases/download/v0.3.0/confd_0.3.0_linux_amd64.tar.gz
tar -zxvf confd_0.3.0_linux_amd64.tar.gz
mv confd /usr/local/bin/confd
mkdir -p  /var/mountedvol/confd/{conf.d,templates}


