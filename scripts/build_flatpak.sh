#!/bin/bash

BUILDDIR="builddir"
BUILDLOG="build.log"
BUILDYML="io.github.andrewmkiss.Demeter.yml"
if [ ${PWD##*/} == "scripts" ]; then
  BUILDDIR="../$BUILDDIR";
  BUILDLOG="../$BUILDLOG"
  BUILDYML="../$BUILDYML"
elif [ ${PWD##*/} == "Demeter" ]; then
  BUILDDIR="$BUILDDIR";
  BUILDLOG="$BUILDLOG"
  BUILDYML="$BUILDYML"
else
  echo "Please execute from Demeter source directory!";
  exit
fi

flatpak-builder -v --user --install --force-clean --keep-build-dirs $BUILDDIR $BUILDYML 2>&1 | tee $BUILDLOG

