#!/bin/bash

BUILDDIR="build-dir"
BUILDLOG="build.log"
if [ ${PWD##*/} == "scripts" ]; then
  BUILDDIR="../$BUILDDIR";
  BUILDLOG="../$BUILDLOG"
elif [ ${PWD##*/} == "Demeter" ]; then
  BUILDDIR="$BUILDDIR";
  BUILDLOG="$BUILDLOG"
else
  echo "Please execute from Demeter source directory!";
  exit
fi

flatpak-builder -v --user --install --force-clean --keep-build-dirs $BUILDDIR io.github.andrewmkiss.Demeter.yml 2>&1 | tee $BUILDLOG

