#!/bin/bash

APT_GET_CMD=$(which apt-get)
YUM_CMD=$(which yum)


if [[ ! -z $APT_GET_CMD ]]; then
  apt-get update
  apt-get install software-properties-common -y
  apt-add-repository ppa:ansible/ansible -y
  apt-get update
  apt-get install ansible -y
elif [[ ! -z $YUM_CMD ]]; then
  yum install -y epel-release
  yum update -y
  yum install -y ansible
else
  echo "error can't install package $PACKAGE"
  exit 1;
fi
