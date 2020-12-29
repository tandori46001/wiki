#!/bin/bash

PATHOVFTOOL="/Users/na/_git/wiki/techno/ansible/play-linux-new-server/files/VMwareOVFTool"
PATHDEST="/Users/na/Downloads/_vmware"
ESXSRV="192.168.55.5"
VMSRVNAME="lubudsk01"
#VMSRVNAME="vmlubuxx"

# export VM guest from ESXi to local PC
# $PATHOVFTOOL/ovftool vi://$ESXSRV/$VMSRVNAME "$PATHDEST/$VMSRVNAME.ovf"
$PATHOVFTOOL/ovftool vi://$ESXSRV/$VMSRVNAME "$PATHDEST/$VMSRVNAME.ova"