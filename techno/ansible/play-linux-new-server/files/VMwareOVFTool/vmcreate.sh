#!/bin/bash

# create vmware centos 7 vmware from ova template

# declare variables
ovftoolpath="/Applications/VMware\ OVF\ Tool"
esxip="172.16.33.5"
datastorename="DS01_VMFS_SSD250GB"
vmnetworklan="VIRLAN"
vmnetworkwan="VIRWAN"
vmnetworklabo="VIRLABO"
powervmon="--powerOn"
#-------------------------------------------
# informations sur des vm centos7 minimal
ovapathcentos7="/Users/gamma/Downloads/_vmware/centos7-minimal.ova"
nombrevmcentos7=1
vmnamecentos7="VIRSRVESX-CENTOS7-0999"  #entree les bon nom de vm
#-------------------------------------------
# informations sur des vm centos8 minimal
ovapathcentos8="/Users/gamma/Downloads/_vmware/centos8-minimal.ova"
nombrevmcentos8=1
vmnamecentos8="VIRSRVESX-CENTOS8-0999"  #entree les bon nom de vm
#-------------------------------------------
# informations sur des vm centos8 DESKTOP
ovapathcentos8desk="/Users/gamma/Downloads/_vmware/centos8-desktop.ova"
nombrevmcentos8desk=1
vmnamecentos8desk="VIRSRVESX-CENTOS8DESK-0999"  #entree les bon nom de vm
#-------------------------------------------
# informations sur des vm ubuntu minimal
ovapathubuntu="/Users/gamma/Downloads/_vmware/ubuntu-minimal.ova"
nombrevmubuntu=1
vmnameubuntu="VIRSRVESX-UBUNTU-0999"  #entree les bon nom de vm
#-------------------------------------------
echo "enter root password : "
read -s rootpasswd

# create vm CentOS7-minimal
./ovftool --disableVerification --noSSLVerify -dm=thin -ds=$datastorename -dm=thin -n="$vmnamecentos7" --network=$vmnetworklan $powervmon $ovapathcentos7 vi://root:$rootpasswd@$esxip

# create vm CentOS8-minimal
#./ovftool --disableVerification --noSSLVerify -ds=$datastorename -dm=thin -n="$vmnamecentos8" --network=$vmnetworklan $powervmon $ovapathcentos8 vi://root:$rootpasswd@$esxip

# create vm CentOS8-DESKTOP
#./ovftool --disableVerification --noSSLVerify -ds=$datastorename -dm=thin -n="$vmnamecentos8desk" --network=$vmnetworklan $powervmon $ovapathcentos8desk vi://root:$rootpasswd@$esxip

# create vm CentOS7-minimal
#./ovftool --disableVerification --noSSLVerify -ds=$datastorename -dm=thin -n="$vmnameubuntu" --network=$vmnetworklan $powervmon $ovapathubuntu vi://root:$rootpasswd@$esxip

# create multiples vm
#for (( i=1; i<=$nombrevmcentos7; i++ ))
#do 
#  ./ovftool --disableVerification --noSSLVerify -ds=$datastorename -dm=thin -n="$vmnamecentos7$i" --network=$vmnetworklan $powervmon $ovapathcentos7 vi://root:$rootpasswd@$esxip
#done 
