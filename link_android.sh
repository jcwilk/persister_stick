#!/bin/sh

find ./android -mindepth 1 -maxdepth 1 -type d -printf '%P\n' | while read file
do
  echo "deleting and linking $file" &&
  rm -rf "/root/$file" && #what's the worst that could happen! <3
  ln -s "$PWD/android/$file" /root/ ||
  echo "failed!" && exit 1 
done

#link in any jdks contained in this directory, if any
find . -mindepth 1 -maxdepth 1 -type d -iname 'jdk*' -printf '%P\n' | while read file
do
  echo "deleting and linking $file" &&
  mkdir -p "/usr/lib/jvm" &&
  rm -rf "/usr/lib/jvm/$file" && #nothing bad here either, I'm sure ;) :*
  ln -s "$PWD/$file" /usr/lib/jvm/ &&
  rm -f "/usr/lib/jvm/default-java" &&
  ln -s "/usr/lib/jvm/$file" /usr/lib/jvm/default-java ||
  echo "failed!" && exit 1
done

echo "linked android and jdk successfully"