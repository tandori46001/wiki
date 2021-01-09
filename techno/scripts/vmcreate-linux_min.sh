#!/bin/bash
# create virtual mashine ubuntu from vmware ova template

# set -x

# declare variables
PATHOVFTOOL="/Users/na/_git/wiki/techno/ansible/play-linux-new-server/files/VMwareOVFTool"
OVAPATH="/Users/na/Downloads/_vmware/images-ovf"
ESXSRV="10.0.99.5"
DATASTORENAME="DS01_VMFS_SSD250GB"
DISKTYPE="thin"
VMNETWORKHOME="VIRHOME"
VMNETWORKLABO1="VIRLABO1"
VMNETWORKLABO2="VIRLABO2"
#POWERVMON="--powerOn"

#-------------------------------------------
# informations sur des ubuntu server minimal
OVAUBUNTUSRVMIN="vmlubuxx.ova"
NOMBREVMUBUNTU='3'
# VMNAMEUBUNTUSRVMIN1="lubusrvlabotest"  #entree les bon nom de vm
# VMNAMEUBUNTUSRVMIN1="vpnrouter"  #entree les bon nom de vm
VMNAMEUBUNTUSRVMIN="lubusrvlabotest"    # mon debut pour multiples VMs
#-------------------------------------------

#-------------------------------------------
# informations sur des centos server minimal
OVACENTOS7SRVMIN="centos7-minimal.ova"
OVACENTOS8SRVMIN="centos8-minimal.ova"
NOMBREVMCENTOS7='2'
NOMBREVMCENTOS8='2'

VMNAMECENTOS7SRVMIN="lcent7srvlabotest"    # mon debut pour multiples VMs
VMNAMECENTOS8SRVMIN="lcent8srvlabotest"    # mon debut pour multiples VMs
#-------------------------------------------


echo "enter user name : "
read -s USERNAME

echo "enter user password : "
read -s USERPASSWORD

# create "one" vm ubuntu-minimal LABO
# $PATHOVFTOOL/ovftool --disableVerification --noSSLVerify -ds=$DATASTORENAME -dm=$DISKTYPE -n="$VMNAMEUBUNTUSRVMIN1" --network=$VMNETWORKLABO1 $POWERVMON $OVAPATH/$OVAUBUNTUSRVMIN vi://$USERNAME:$USERPASSWORD@$ESXSRV

# create "one" vm centos7-minimal LABO
# $PATHOVFTOOL/ovftool --disableVerification --noSSLVerify -ds=$DATASTORENAME -dm=$DISKTYPE -n="$VMNAMECENTOS7SRVMIN" --network=$VMNETWORKLABO1 $POWERVMON $OVAPATH/$OVACENTOS7SRVMIN vi://$USERNAME:$USERPASSWORD@$ESXSRV

# create "one" vm centos8-minimal LABO
# $PATHOVFTOOL/ovftool --disableVerification --noSSLVerify -ds=$DATASTORENAME -dm=$DISKTYPE -n="$VMNAMECENTOS8SRVMIN" --network=$VMNETWORKLABO1 $POWERVMON $OVAPATH/$OVACENTOS8SRVMIN vi://$USERNAME:$USERPASSWORD@$ESXSRV

# create LABO - UBUNTU servers, multiples vm
for (( i=1; i<=$NOMBREVMUBUNTU; i++ ))
do
  $PATHOVFTOOL/ovftool --disableVerification --noSSLVerify -ds=$DATASTORENAME -dm=$DISKTYPE -n="$VMNAMEUBUNTUSRVMIN$i" --network=$VMNETWORKLABO1 $POWERVMON $OVAPATH/$OVAUBUNTUSRVMIN vi://$USERNAME:$USERPASSWORD@$ESXSRV
done

# create LABO - CENTOS7 servers, multiples vm
# for (( i=1; i<=$NOMBREVMCENTOS7; i++ ))
# do
#   $PATHOVFTOOL/ovftool --disableVerification --noSSLVerify -ds=$DATASTORENAME -dm=$DISKTYPE -n="$VMNAMECENTOS7SRVMIN$i" --network=$VMNETWORKLABO1 $POWERVMON $OVAPATH/$OVACENTOS7SRVMIN vi://$USERNAME:$USERPASSWORD@$ESXSRV
# done

# create LABO - CENTOS8 servers, multiples vm
# for (( i=1; i<=$NOMBREVMCENTOS8; i++ ))
# do
#   $PATHOVFTOOL/ovftool --disableVerification --noSSLVerify -ds=$DATASTORENAME -dm=$DISKTYPE -n="$VMNAMECENTOS8SRVMIN$i" --network=$VMNETWORKLABO1 $POWERVMON $OVAPATH/$OVACENTOS8SRVMIN vi://$USERNAME:$USERPASSWORD@$ESXSRV
# done