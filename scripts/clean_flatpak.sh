#!/bin/bash

# Check the current directory
if [ ${PWD##*/} == "scripts" ]; then
  cd ..
fi;
if [ ${PWD##*/} != "Demeter" ]; then
  echo "Please execute from Demeter source directory!"
  exit
fi

# Banner
echo "Cleaning Flatpak directories..."
# Delete the build directory
echo "  Deleting build-dir..."
rm -rf build-dir

# Delete the hidden build directories
# Leave the downloaded files
cd .flatpak-builder
for d in $(ls); do
  if [ $d == "checksums" ] || [ $d == "downloads" ]; then
    continue
  else
    echo "  Deleting $d..."
    rm -rf $d
  fi
done


