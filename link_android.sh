#!/bin/sh

find ./android -type d -mindepth 1 -maxdepth 1 -printf '%P\n' | while read file
do
  echo "deleting and linking $file"
  rm -rf "/root/$file" #what's the worst that could happen! <3
  ln -s "$PWD/android/$file" /root/
done