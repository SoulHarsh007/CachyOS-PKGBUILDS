#!/usr/bin/env bash

files=$(find . -name "PKGBUILD")

for f in $files
do
  d=$(dirname $f)
  cd $d
  updpkgsums
  makepkg --printsrcinfo > .SRCINFO
  cd ..
done
