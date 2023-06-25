# Demeter Flatpak
A flatpak spin of the Demeter XAS package by Bruce Ravel [Demeter Homepage](https://bruceravel.github.io/demeter/). This is an unofficial project and is **not** supported or maintained by the Demeter team. All questions and comments about this flatpak should stay within this repository.

## Development
This project began as a way to more easily install Demeter onto different machines and OS installs. It is a personal project.

This project was developed and tested on Fedora 38 in June 2023.

## Installation
Clone this repository and run `./build_flatpak.sh` from the `scripts/` directory.

The script will run `flatpak-builder`. The installation reaches out and downloads source archives and files for all the individual modules and builds them. The build process takes about 25 min on my laptop. 

## Scripts
`build_flatpak.sh` <br>
This script will build and install the Demeter flatpak. A full install takes about 25 min.

`make_perl_deps.sh` <br>
Demeter requires many Perl dependencies. This will take a list of Perl modules, add additional dependencies, and generate a JSON and YML file for downloading and installing these files into the flatpak.

`clean_flatpak.sh` <br>
During the build process, it was necessary to build and rebuild many times. This will delete the build folders, but leave the downloaded archives.

`purge_flatpak.sh` <br>
During the build process, it was necessary to build and rebuild many times. This will delete the build folders and the downloaded archives.

