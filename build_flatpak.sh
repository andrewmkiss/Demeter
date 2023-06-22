#!/bin/bash

flatpak-builder -v --user --install --force-clean --keep-build-dirs build-dir io.github.andrewmkiss.Demeter.yml 2>&1 | tee build.log
