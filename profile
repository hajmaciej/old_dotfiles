#!/bin/bash 

MAIL=/home/username/mail/inbox && export MAIL

export VISUAL=vim
export EDITOR=$VISUAL

# FZF 
export FZF_DEFAUPT_OPTS="--extended" 
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

####### Python --user location
export PATH=/home/fm/.local/bin:$PATH; export PATH

# RUST
export PATH="$HOME/.cargo/bin:$PATH"

# LD_LIBRARY_PATH=/home/fm/Dev/lib 
# export LD_LIBRARY_PATH

# wskazuje plik gnuplota do exportowania do innego pliku
#export GNUPLOT_LIB=~/.gnuplot
#export DISPLAY=:0.0

#LD_LIBRARY_PATH=$TARGET_DIR/lib:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH


# Java Home
#JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
#export PATH=${PATH}:$JAVA_HOME/bin
#!/bin/bash

####### uniform look GTK and QT
export QT_QPA_PLATFORMTHEME=qt5ct
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export GTK3_RC_FILES="$HOME/.config/gtk-3.0/settings.ini"

####### GSL-1.2
#PATH=/home/fm/Dev/bin:$PATH; export PATH
#C_INCLUDE_PATH=/home/fm/Dev/include:$C_INCLUDE_PATH; export C_INCLUDE_PATH
#LD_LIBRARY_PATH=/home/fm/Dev/lib:$LD_LIBRARY_PATH; export LD_LIBRARY_PATH

