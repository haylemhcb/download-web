#!/bin/bash



if [ $# -ne 2 ];then
  echo "$0 <url> <dominio>"
  exit 1;
fi

wget --mirror --convert-links --adjust-extension --page-requisites --no-parent --domains "$2" "$1"
