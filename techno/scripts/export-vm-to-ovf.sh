#!/bin/bash

#---OVF Tool
PATHOVFTOOL="/Users/na/_git/wiki/techno/ansible/play-linux-new-server/files/VMwareOVFTool"

#---Path destination
PATHDEST="/Users/na/Downloads/_vmware/images-ovf/ubuntu"
#PATHDEST="/Users/na/Downloads/_vmware/images-ovf/centos7"
#PATHDEST="/Users/na/Downloads/_vmware/images-ovf/centos8"

#---ESX server
ESXSRV="192.168.60.5"

#---VM Name
VMSRVNAME="lubusrvlabotest1"
# VMSRVNAME="lcent7srvlabotest1"
# VMSRVNAME="lcent8srvlabotest1"

# export VM guest from ESXi to local PC
#---OVF
$PATHOVFTOOL/ovftool vi://$ESXSRV/$VMSRVNAME "$PATHDEST/$VMSRVNAME.ovf"
#
#---OVA
# $PATHOVFTOOL/ovftool vi://$ESXSRV/$VMSRVNAME "$PATHDEST/$VMSRVNAME.ova"