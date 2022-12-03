# Run this with super user administration
SOURCE_DIR=/setup
USER_DIR=$HOME
cd $USER_DIR

###################################################################################################
# Installing Vim from source
apt-get update
apt install make -y
apt-get install build-essential -y
apt-get install libncurses5-dev libncursesw5-dev -y
apt-get update 
git clone https://github.com/vim/vim.git
cd vim/src
./configure --enable-python3interp=yes
make
make install 
cd $USER_DIR
rm -rf vim
# Setting Vim as default editor for git
git config --global core.editor "vim"

###################################################################################################
# LSD Install
 apt-get install jq -y
latestVersion=$(curl -sL https://api.github.com/repos/Peltoche/lsd/releases/latest | jq -r ".tag_name")
fileName=lsd-musl_${latestVersion}_amd64.deb
wget https://github.com/Peltoche/lsd/releases/download/${latestVersion}/${fileName}
 dpkg -i $fileName
rm $fileName

###################################################################################################
# Copying the configuration files to USER_DIR dir
cp -r "${SOURCE_DIR}"/config/. $USER_DIR

# Vim setting and installing plugins

# 1. Plugin Manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +'source ~/.vimrc' +'PlugInstall!' +'PlugUpdate!' +qa
echo "colorscheme nord" >> ~/.vimrc

# 2. Setting Auto Completion Station
curl -sfLS install-node.vercel.app | sed 's/.*read.*yn.*dev.tty.*/yn=y/' | bash
corepack enable && corepack prepare yarn@stable --activate
npm install --prefix ~/.vim/plugged/coc.nvim/
# Install extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
echo '{"dependencies":{}}'> package.json
fi
# Change extension names to the extensions you need
# NOTE: This fixes all the issues with vim based installation.
npm install coc-pyright --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod

## 3. Setting Vimspector
#cd ~/.vim/plugged/vimspector/
#python3 -m install_gadget --enable-python
