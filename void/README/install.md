# poprzenosić wszystko do .dotfiles
# doczytać o strukturze plików init

# Meta dane ze zdjec
# http://xahlee.info/img/metadata_in_image_files.html
sudo apt install libimage-exiftool-perl

# translate-shell
# https://github.com/soimort/translate-shell
# also has .plugin.zsh
sudo apt install translate-shell

# glances - htop alternative
# dep - sudo apt install python-dev
pip install --user glances

# keepassXC
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt-get update
sudo install keepassxc

# TLDR
pip install --user tldr

# quite useless, for now at least
# Bpkg, bash repo
git clone https://github.com/bpkg/bpkg.git
cd bpkg
sudo ./setup.sh install

# Yet another dotfiles manager
https://thelocehiliosan.github.io/yadm/

# FEDORA 29
# to enable 3rd party repos you'll need to enable it from software center, and install FEDY
# there will be tools to get smoother font rendering, and such

# how to lear how to use ls corretly
sudo apt install sl :D :D

# feh dependency for i3 wallpaper

# i3-save-tree needs libanyevent-i3-perl

# https://askubuntu.com/questions/598943/how-to-de-uglify-i3-wm

# rm to move to trash, not to delete
apt install trash-cli
alias rm='trash'

# well, not using anymore, because apparently nameing windows is useless
# xdotool, wmctrl for naming windows

# jq awesome command-line JSON processor, needed for getting workspace number
# this is for naming windows
https://stedolan.github.io/jq/

# surfin icon update
# fonts download/update SFs and FontAwesome
https://github.com/FortAwesome/Font-Awesome/tree/master/use-on-desktop

# flameshot + script flameshot_screenshot.sh
https://github.com/lupoDharkael/flameshot

# TLP-UI
https://404.g-net.pl/2018/09/tlp-ui/

# type command is cool!
https://unix.stackexchange.com/questions/101599/bash-what-is-the-use-of-type-bash-builtins

#bash autoload function
https://docstore.mik.ua/orelly/unix3/upt/ch29_13.htm <-
https://stackoverflow.com/questions/30840651/what-does-autoload-do-in-zsh
https://www.mkssoftware.com/docs/man1/functions.1.asp

# Make translate as zsh plugin/function

# folder for all plugins from git? fd, fzf, and such

# find -> fd
https://github.com/sharkdp/fd

# fuzzy-finder -> fzf
https://www.youtube.com/watch?v=1a5NiMhqAR0
https://github.com/junegunn/fzf

#antigen 
curl -L git.io/antigen > antigen.zsh
dodaj do .zshrc >> source $HOME/antigen.zsh
git clone https://github.com/zsh-users/antigen.git ~/antigen

#autojump
sudo apt install autojump
git clone git://github.com/wting/autojump.git
cd autojump
./install.py or ./uninstall.py

# ripgrep is like ag
https://blog.burntsushi.net/ripgrep/

# find -> ag, so it's a more like find for programmers
# can be used as grep replacment
https://github.com/ggreer/the_silver_searcher
sudo apt-get install silversearcher-ag

# stow/rc files -> rcm
https://github.com/thoughtbot/rcm
sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
sudo apt-get update
sudo apt-get install rcm

instalacja dotfiles - wrzucic symlinks w miejsce plikow
ln -sf /path/to/file /path/to/symlink

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions  
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

plugins=(
  autojump
  colored-man-pages
  extract
  git
# sudo
  vscode
  wd
  vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

instalacja fontów SF!

# ZSHRC
http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme
export TERM="xterm-256color"
ZSH_THEME="bullet-train" <- !!!

zainstalować "agnoster-time.zsh-config" w $ZSH_CUSTOM ($HOME/.oh-my-zsh/custom/themes)
ZSH_THEME="agnoster-time"  

export UPDATE_ZSH_DAYS=3

HIST_STAMPS="yyyy/mm/dd"

# ENABLE_CORRECTION="True" -> pozbyć się "# "

za "source $ZSH/oh-my-zsh.sh" dodać

if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

