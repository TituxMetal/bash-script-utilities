#!/bin/bash
set -e
##################################################################################################################
# Author	:	Titux Metal
# Co-Author	:	Erik Dubois
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
# change into your name and email.

# git init
git config --global user.name "Titux Metal"
git config --global user.email "github@lgdweb.fr"
git config --global core.editor nano
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=43200'
git config --global push.default simple
git config --global user.signingkey 1288651EEF84288F
git config --global gpg.program gpg
git config --global commit.gpgsign true

git config --global alias.hist "log --pretty=format:'%C(yellow)[%ad]%C(reset) %C(green)[%h]%C(reset) | %C(red)%s %C(bold red){{%an}}%C(reset) %C(blue)%d%C(reset)' --graph --date=short"
git config --global alias.co checkout
git config --global alias.ci "commit -S -m"
git config --global alias.cob "checkout -b"
git config --global alias.st status
git config --global alias.br branch
git config --global alias.type "cat-file -t"
git config --global alias.dump "cat-file -p"


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
