#!/bin/bash

DEST="generated-perl-deps.json"
CPANGEN="../flatpak-builder-tools/cpan/flatpak-cpan-generator.pl"
JSON2YAML="../flatpak-builder-tools/flatpak-json2yaml.py"

## Requires
deps=""
# deps="$deps Moose MooseX::Aliases MooseX::Types MooseX::Types::LaxNum"
# deps="$deps Archive::Zip"
# deps="$deps Capture::Tiny Chemistry::Elements Config::INI Const::Fast"
# deps="$deps DateTime Digest::SHA"
# deps="$deps Encoding::FixLatin"
# deps="$deps File::Copy::Recursive File::CountLines File::Touch File::Which"
# deps="$deps Graph"
# deps="$deps Heap"
# deps="$deps JSON"
# deps="$deps List::MoreUtils"
# deps="$deps Math::Combinatorics Math::Derivative Math::Random Math::Round Math::Spline"
# deps="$deps Pod::POM"
# deps="$deps Regexp::Common Regexp::Assemble"
# deps="$deps Spreadsheet::WriteExcel Statistics::Descriptive"
# deps="$deps Text::Template Text::Unidecode Tree::Simple"
# deps="$deps Want"
# deps="$deps YAML::Tiny"
# deps="$deps PDL PDL::Stats"
# deps="$deps XMLRPC::Lite"
# deps="$deps RPC::XML::Client"
# deps="$deps Term::Sk Term::Twiddle"
# deps="$deps Test::Base Test::Differences"
# deps="$deps inc::latest Software::License"
# deps="$deps Test::Warnings"
deps="$deps Alien::HDF4"

## Build Requires
# deps="$deps File::Copy::Recursive Pod::ProjectDocs File::Slurper ExtUtils::CBuilder"

## Recommends
# deps="$deps Graphics::GnuplotIF File::Monitor::Lite"
# deps="$deps Wx"

echo
echo "Considering the modules:"
echo $deps
echo
echo "------------------------"

$CPANGEN $deps -o $DEST
$JSON2YAML $DEST

