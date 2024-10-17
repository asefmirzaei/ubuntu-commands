# ================================================== install ==================================================
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl wget

# main git repository : https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
# or
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source ~/.bashrc
source ~/.zshrc
. ~/.profile
command -v nvm
nvm -v
nvm ls-remote
nvm install node
nvm alias default node
nvm use node
# ================================================== commands =================================================
