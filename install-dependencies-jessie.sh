#!/bin/bash
if [ ! -f /etc/debian_version ] ; then
 >2 echo "error: please use this on a debian system"
 exit 1
fi

if [[ !  $(cat /etc/debian_version) =~ "8." ]] ; then
 >2 echo "error: please use this on a debian JESSIE system"
 exit 1
fi

# install compilation dependencies for fineltra extension
apt-get update && apt-get install -y liblwgeom-dev postgresql-server-dev-9.4 libproj-dev

