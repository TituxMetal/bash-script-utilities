#!/bin/bash

set -e

################################################################################
#   getAllTmarcolinuxGitRepo-v1.sh
#
#   Get all Titux Metal ArcoLinux repositories from GitHub
#
# Change History
# | Date      | Author    | Ver.  | Comments
# 28/01/2020  TituxMetal  v1.0.0  Modifying original script from Erik Dubois
#
#
################################################################################

################################################################################
#
#  Copyright (C) 2020 Titux Metal <tmarcolinux@lgdweb.fr>
#  Original Author: Erik Dubois https://erikdubois.be
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; If not, see <https://www.gnu.org/licenses/>.
#
################################################################################

directories=(
  bash-script-utilities
  ohmyzsh
  tmarcolinux-pkgbuild
  tmarcolinux-i3wm-config
  tmarcolinux-mirrorlist
  tmarcolinux-keyring
  tmarcolinux-calamares
  tmarcolinux-iso
  tmarcolinux-repo-testing
  tmarcolinux-repo
)
#
destination=$HOME/tmarcolinux
githubUri="git@github.com:TituxMetal"
count=0

layout() {
  tput setaf 4
  echo "------------------------------------------------------------"
  echo "Get all Titux Metal ArcoLinux repositories from GitHub"
  echo "------------------------------------------------------------"
  tput sgr0
}

main() {
  for name in "${directories[@]}"; do
  	count=$[count+1]
  	tput setaf 5;echo "Github "${name};tput sgr0;
    if [[ ! -e "${destination}/${name}" ]]; then
        git clone "${githubUri}/${name}" "${destination}/${name}"
        continue
    fi

    tput setaf 3
    echo ""
    echo "${name} repository is already there"
    echo ""
    tput sgr0
  done
}

layout
main

tput setaf 2
echo "------------------------------------------------------------"
echo "$(basename `pwd`)" script done""
echo "------------------------------------------------------------"
tput sgr0

exit 0
