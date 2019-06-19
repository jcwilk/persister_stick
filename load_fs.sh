#!/bin/sh

cd ./fs
find . -mindepth 2 -type f,l -printf '%P\n' | while read file
do
  echo "removing and copying $file"
  cp --parents --preserve=all "$file" / #automatically overwrites files
done
cd -

cd ./privatefs
find . -mindepth 2 -type f,l -printf '%P\n' | while read file
do
  echo "removing and copying $file"
  cp --parents --preserve=all "$file" / #automatically overwrites files
done