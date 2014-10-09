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
echo "Installing grc..."
brew install grc
 
# get git prompt and autocompletion
echo "Downloading git-completion and git-prompt..."
curl -o ~/.git-prompt.sh https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
curl -o ~/.git-completion.sh https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
 
# install new profile
cd ~
echo "Creating backup .bash_profile.bak..."
mv .bash_profile .bash_profile.bak
echo "Downloading new fancy .bash_profile..."
wget https://raw.githubusercontent.com/frne/fancy-development-box-config/master/bash-colors/.bash_profile
echo "Reloading bash configuration..."
source ~/.bash_profile
echo "DONE!"
