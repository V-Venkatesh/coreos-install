#!bin/bash
mkdir tempCore
cd tempCore
wget https://raw.githubusercontent.com/V-Venkatesh/coreos-install/master/cloud-config-file.yml
ls
read -p " Press Yes[Y] to continue coreos installation into machine, No[N] to exit " flag
if [ $flag -eq Y or $flag -eq y ]
then
  echo "Starting coreos installation proccess"
  coreos-install -d dev/sda -C stable -c cloud-config-file.yml
fi
