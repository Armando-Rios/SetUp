cd ..

# update to ubuntu distro
sudo apt update
sudo apt upgrade


# install Zsh shell
sudo apt install zsh

# set Zsh with default shell
chsh -s $(which zsh)

# install oh my zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh plugins and themes
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git config --global core.editor "code --wait"
git config --global -e
git config --global core.autocrlf input

cd setup
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh

exec zsh

echo "SetUp Complete 😘👌"