#!/bin/bash

PATHOVFTOOL="/Users/na/_git/wiki/techno/ansible/play-linux-new-server/files/VMwareOVFTool"
PATHDEST="/Users/na/Downloads/_vmware/images-ovf"
ESXSRV="192.168.60.5"
# VMSRVNAME="lubudsk01"
# VMSRVNAME="cent8tem"
# VMSRVNAME="vmlubuxx"

# export VM guest from ESXi to local PC
#---OVF
# $PATHOVFTOOL/ovftool vi://$ESXSRV/$VMSRVNAME "$PATHDEST/$VMSRVNAME.ovf"
#
#---OVA
# $PATHOVFTOOL/ovftool vi://$ESXSRV/$VMSRVNAME "$PATHDEST/$VMSRVNAME.ova"