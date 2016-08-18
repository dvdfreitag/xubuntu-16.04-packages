#!/bin/sh
# Uninstall firefox
sudo apt purge firefox
rm -rf ~/.mozilla/firefox /etc/firefox /usr/lib/firefox
sudo rm -rf /usr/lib/firefox  /usr/lib/firefox-addons
# Remove misc. unnecessary packages
sudo apt purge libreoffice* \
	pidgin* \
	catfish \
	mousepad \
	*notes* \
	onboard* \
	orage \
	gnome-mines \
	gnome-sudoku \
	simple-scan \
	ristretto \
	evince \
	transmission* \
	thunderbird* \
	*screenshooter \
	imagemagick* \
	parole \
	*pulse* \
	*dict*
# Install Chrome stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
# Now install sublime text
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt update
# Install some packages
sudo apt install sublime-text-installer numlockx git cabextract
sudo ln -s /usr/bin/subl /usr/bin/sublime
# Install consolas font
wget http://download.microsoft.com/download/E/6/7/E675FFFC-2A6D-4AB0-B3EB-27C9F8C8F696/PowerPointViewer.exe
# Extract font
cabextract -L -F ppviewer.cab PowerPointViewer.exe
cabextract -L -F consola.ttf ppviewer.cab
# Move font to fonts directory
mv consola.ttf ~/.fonts
# Force re-cache fonts
fc-cache -f -v ~/.fonts
# Remove temp files
rm -f google-chrome-stable_current_amd64.deb ppviewer.cab PowerPointViewer.exe
# Uninstall cabextract
sudo apt purge cabextract
# Remove any unnecessary dependencies
sudo apt autoremove && sudo apt autoclean && sudo apt clean
# Just in case we nuked any dependencies
sudo apt install -f
