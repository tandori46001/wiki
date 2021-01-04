#!/bin/bash
# create virtual mashine ubuntu from vmware ova template

# set -x

# declare variables
PATHOVFTOOL="/Users/na/_git/wiki/techno/ansible/play-linux-new-server/files/VMwareOVFTool"
OVAPATH="/Users/na/Downloads/_vmware"
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

echo "enter user name : "
read -s USERNAME

echo "enter user password : "
read -s USERPASSWORD

# create vm ubuntu-minimal LABO
# $PATHOVFTOOL/ovftool --disableVerification --noSSLVerify -ds=$DATASTORENAME -dm=$DISKTYPE -n="$VMNAMEUBUNTUSRVMIN1" --network=$VMNETWORKLABO1 $POWERVMON $OVAPATH/$OVAUBUNTUSRVMIN vi://$USERNAME:$USERPASSWORD@$ESXSRV

# create LABO, multiples vm
for (( i=1; i<=$NOMBREVMUBUNTU; i++ ))
do
  $PATHOVFTOOL/ovftool --disableVerification --noSSLVerify -ds=$DATASTORENAME -dm=$DISKTYPE -n="$VMNAMEUBUNTUSRVMIN$i" --network=$VMNETWORKLABO1 $POWERVMON $OVAPATH/$OVAUBUNTUSRVMIN vi://$USERNAME:$USERPASSWORD@$ESXSRV
done