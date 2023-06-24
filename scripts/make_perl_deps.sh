#!/bin/bash

## Requires
export deps=""
# export deps="${deps} Moose MooseX::Aliases MooseX::Types MooseX::Types::LaxNum"
# export deps="${deps} Archive::Zip"
# export deps="${deps} Capture::Tiny Chemistry::Elements Config::INI Const::Fast"
# export deps="${deps} DateTime Digest::SHA"
# export deps="${deps} Encoding::FixLatin"
# export deps="${deps} File::Copy::Recursive File::CountLines File::Touch File::Which"
# export deps="${deps} Graph"
# export deps="${deps} Heap"
# export deps="${deps} JSON"
# export deps="${deps} List::MoreUtils"
# export deps="${deps} Math::Combinatorics Math::Derivative Math::Random Math::Round Math::Spline"
# export deps="${deps} Pod::POM"
# export deps="${deps} Regexp::Common Regexp::Assemble"
# export deps="${deps} Spreadsheet::WriteExcel Statistics::Descriptive"
# export deps="${deps} Text::Template Text::Unidecode Tree::Simple"
# export deps="${deps} Want"
# export deps="${deps} YAML::Tiny"
# export deps="${deps} PDL PDL::Stats"
# export deps="${deps} XMLRPC::Lite"
# export deps="${deps} RPC::XML::Client"
# export deps="${deps} Term::Sk Term::Twiddle"
# export deps="${deps} Test::Base Test::Differences"
# export deps="${deps} inc::latest Software::License"
# export deps="${deps} Test::Warnings"
export deps="${deps} Alien::HDF4"

## Build Requires
# export deps="${deps} File::Copy::Recursive Pod::ProjectDocs File::Slurper ExtUtils::CBuilder"

## Recommends
# export deps="${deps} Graphics::GnuplotIF File::Monitor::Lite"
# export deps="${deps} Wx"

echo
echo "Considering the modules:"
echo $deps
echo
echo "------------------------"

export DEST="generated-perl-deps.json"
../flatpak-builder-tools/cpan/flatpak-cpan-generator.pl $deps -o $DEST
../flatpak-builder-tools/flatpak-json2yaml.py $DEST

