# ================================================== install ==================================================
sudo apt update -y
sudo apt install -y git
git --version
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --global credential.helper store
git config --list

# ================================================== commands =================================================
# clone a repository then fetch and pull all its branchs:
git clone YOR_PROJECT_GIT_UTL
git branch -r | grep -v '\->' | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
git fetch --all
git pull --all
