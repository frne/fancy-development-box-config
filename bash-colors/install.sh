########################################################
# Fancy Development Box Config                         #
#                                                      #
# https://github.com/frne/fancy-development-box-config #
#                                                      #
# Licensed under MIT                                   #
# http://opensource.org/licenses/MIT                   #
########################################################
 
# This installer only works for OSX.
# Try your linux package manager like yum or apt to install grc
# EXAMPLE: apt-get install grc
brew install grc
 
# get git prompt and autocompletion
curl -o ~/.git-prompt.sh https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
curl -o ~/.git-completion.sh https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
 
# install new profile
cd ~
mv .bash_profile .bash_profile.bak
wget https://gist.github.com/frne/8315313/raw/.bash_profile
source ~/.bash_profile
