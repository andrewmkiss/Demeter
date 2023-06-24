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
echo "Purging Flatpak directories..."
# Delete the build directory
echo "  Deleting build-dir..."
rm -rf build-dir

# Delete the hidden build directories
# Leave the downloaded files
echo "  Deleting .flatpak-builder..."
rm -rf .flatpak-builder

