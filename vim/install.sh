VIM_COLOR_DIR=~/.vim/colors;
VIM_COLOR_DOWNLOAD_URL=https://raw.githubusercontent.com/zenorocha/dracula-theme/master/vim/dracula.vim
VIM_RC_DOWNLOAD_URL=https://raw.githubusercontent.com/frne/fancy-development-box-config/master/vim/.vimrc

echo "Checking dir: $VIM_COLOR_DIR"
if [ -d "$VIM_COLOR_DIR" ]; then
  mkdir $VIM_COLOR_DIR
fi

echo "Downloading color scheme"
wget $VIM_COLOR_DOWNLOAD_URL -P$VIM_COLOR_DIR

echo "Making a backup of ~/.vimrc"
cp ~/.vimrc ~/.vimrc.bak

echo "Downloading new .vimrc"
wget -O ~/.vimrc $VIM_RC_DOWNLOAD_URL
