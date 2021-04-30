#!/bin/bash
sudo pacman -Syu python\
			alacritty\
			calibre\
			tmux\
			vifm\
			code\
			nautilus\
			firefox\
			rofi\
			ttf-font-awesome\
			unzip\
			feh\
			python-pip\
			bitwarden\
			anki\
			discord\
			steam\
			flatpaks\
			teams\


pamac build\
		yadm\
		spotify

pamac remove nitrogen

###############
# GET GTK THEME
###############
 
# create themes dir
mkdir /home/james/.themes
# downloading gtk dracula theme
curl https://codeload.github.com/dracula/gtk/zip/master --output /home/james/.themes/Dracula.zip

# unzip to correct file
unzip /home/james/.themes/Dracula.zip -d /home/james/.themes

# remove zip
rm /home/james/.themes/Dracula.zip

#rename theme to dracula
mv /home/james/.themes/gtk-master /home/james/.themes/Dracula

# make writable
chmod 775 /home/james/.icons/Dracula


###############
# GET ICON PACK
###############

# downloading dracula icon pack
wget -O /home/james/.icons/Dracula.zip https://github.com/dracula/gtk/files/5214870/Dracula.zip

unzip /home/james/.icons/Dracula -d /home/james/.icons

# remove zip file
rm /home/james/.icons/Dracula.zip

# make writable
chmod 775 /home/james/.icons/Dracula

# rename default config files 
mv /home/james/.bashrc /home/james/.bashrc.default
mv /home/james/.i3/config /home/james/.i3/config.default
mv /home/james/.xinitrc /home/james/.xinitrc.default
mv /home/james/.config/dunst/dunstrc /home/james/.config/dunst/dunstrc.default
mv /home/james/.config/gtk-3.0/settings.ini /home/james/.config/gtk-3.0/settings.ini.default
mv /home/james/.config/vifm/vifmrc /home/james/.config/vifm/vifmrc.default

############
# SETUP TMUX
############

# clone tmux plugin package manager
git clone https://github.com/tmux-plugins/tpm /home/james/.tmux/plugins/tpm

##########
# SETUP i3 
##########

# installing icons daemon for i3
pip3 install i3-workspace-names-daemon

# install better tiling defaults
pip install autotiling

##############
# GET DOTFILES
##############

yadm init

# pull dotfiles down
yadm pull https://github.com/james-t-larson/dotfiles

# install plugins for tmux
/home/james/.tmux/plugins/tpm/scripts/install_plugins.sh

# restart i3 to make changes
i3-msg restart