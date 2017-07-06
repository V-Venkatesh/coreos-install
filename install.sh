#!/bin/bash
[ -d tempCore ] || mkdir tempCore
cd tempCore
wget https://raw.githubusercontent.com/V-Venkatesh/coreos-install/master/cloud-config-file.yml
ls
echo " Press Yes[Y] to continue coreos installation into machine, No[N] to exit " flag
# to read strings
read flag
if (( (( $flag == "Y")) || (($flag == "y")) )) ]
then
  echo "Starting coreos installation proccess"
  sudo coreos-install -d /dev/sda -C stable -c cloud-config-file.yml
fi
  
