#!/bin/bash
pamac install 
	python
	alacritty
	tmux
	vifm
	code
	nautilus
	firefox
	discord
	steam
	ttf-font-awesome 
	unzip
	# flatpaks?
	# teams?
	# spotify?

###############
# SET GTK THEME
###############

# create themes dir
mkdir ~/.themes
# downloading gtk dracula theme
curl https://codeload.github.com/dracula/gtk/zip/master --output ~/.themes/Dracula.zip

# unzip 
unzip ~/.themes/Dracula.zip -d ~/.themes/Dracula

# remove zip
rm ~/.themes/Dracula.zip

# rename theme to dracula
# mv ~/.themes/gtk-master ~/.themes/Dracula


###############
# SET ICON PACK
###############

# downloading dracula icon pack
curl "https://github-repository-files.githubusercontent.com/118868345/5214870?X-Amz-Algorithm=AWS4-HMAC-SHA256&amp;X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210422%2Fus-east-1%2Fs3%2Faws4_request&amp;X-Amz-Date=20210422T114040Z&amp;X-Amz-Expires=300&amp;X-Amz-Signature=32534b3a45181f04e846951d14e3a99617881add97d49e2436bad5450068d4cb&amp;X-Amz-SignedHeaders=host&amp;actor_id=0&amp;key_id=0&amp;repo_id=118868345&amp;response-content-disposition=attachment%3Bfilename%3DDracula.zip&amp;response-content-type=application%2Fzip" --output ~/.icons/Dracula.zip

unzip ~/.icons/Dracula.zip -d ~/.themes/Dracula

# remove zip file
rm ~/.icons/Dracula.zip

# remane default config files 
mv ~/.bashrc ~/.bashrc.default
mv ~/.config/dunst/dunstrc ~/.config/dunst/dunstrc.default
mv ~/.config/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini.default
mv ~/.config/vifm/vifmrc ~/.config/vifm/vifmrc.default
mv ~/.i3/config ~/.i3/config.default

# clone tmux plugin package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


pamac build yadm


# clone repo

# run script for tmux plugin install

