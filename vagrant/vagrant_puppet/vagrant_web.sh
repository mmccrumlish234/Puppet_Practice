#!/bin/bash
apt-get update && apt-get install -y wget

#Install puppet
cd /tmp
wget -nc -nv http://apt.puppetlabs.com/puppetlabs-release-precise.deb
dpkg -i puppetlabs*.deb
apt-get update && apt-get install -y puppet-common

#Create share for manifests 
cp -Rv /Puppet_Practice/puppet_src/* /etc/puppet/
#cp -Rv /Puppet_Practice/hieradata/vagrant /etc/puppet/hieradata

#Apply manifest
sudo puppet apply /etc/puppet/manifests/site_web.pp
