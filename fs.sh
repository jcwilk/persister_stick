#!/bin/sh

cd ./fs
find . -mindepth 1 -type f,l -printf '%P\n' | while read file
do
  echo "removing and copying $file"
  cp --parents --preserve=all "$file" / #automatically overwrites files
done