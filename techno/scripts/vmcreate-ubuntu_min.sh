#!/bin/bash
# create virtual mashine ubuntu from vmware ova template

# declare variables
ovftoolpath="VMwareOVFTool"
esxip="192.168.55.5"
datastorename="DS01_VMFS_SSD250GB"
disktype="thin"
vmnetworklan="VIRLAN1"
vmnetworkwan="VIRWAN"
vmnetworklan2="VIRLAN2"
powervmon="--powerOn"
#-------------------------------------------
# informations sur des vm centos7 minimal
ovapathubuntu="ubuntu-minimal.ova"
nombrevmubuntu=1
vmnameubuntu="virubuntu-221"  #entree les bon nom de vm
#-------------------------------------------

# create vm ubuntu-minimal
$ovftoolpath/ovftool --disableVerification --noSSLVerify -ds=$datastorename -dm=$disktype -n="$vmnameubuntu" --network=$vmnetworklan $powervmon $ovapathubuntu vi://$esxip