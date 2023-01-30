# ================================================== install ==================================================
sudo apt update -y
sudo apt install -y curl wget

# main git repository : https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# or
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

bash: source ~/.bashrc
zsh: source ~/.zshrc
ksh: . ~/.profile

nvm -v
# ================================================== commands =================================================
