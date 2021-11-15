#!/bin/bash

if [ $# -ne 1 ]; then
  echo "input target directory you want to copy prepare-commit-msg recursively." 1>&2
  exit 1
fi

dir="$1"
repos=`'ls' -p $dir | grep /`

for repo in ${repos[@]}; do
  to_file_path=${dir}/${repo}.git/hooks/prepare-commit-msg
  cp -v ./prepare-commit-msg $to_file_path
done
