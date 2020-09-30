#!/bin/bash

if [ $# -ne 1 ]; then
  echo "input target directory you want to copy prepare-commit-msg recursively." 1>&2
  exit 1
fi

dir="$1"
repos=`ls -p $dir | grep /`

for repo in ${repos[@]}; do
  to_file_path=${dir}/${repo}.git/hooks/prepare-commit-msg
  if [ -f $to_file_path ]; then
    # cp -iv ./prepare-commit-msg $to_file_path
    cp -v ./prepare-commit-msg $to_file_path
  fi
done