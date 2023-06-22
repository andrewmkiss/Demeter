#!/bin/bash

flatpak-builder -v --user --install --force-clean --keep-build-dirs build-dir org.flatpak.demeter.yml 2>&1 | tee build.log
