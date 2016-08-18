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
sudo apt autoremove && sudo apt autoclean && sudo apt clean
# Install Chrome stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
# Just in case we nuked any dependencies
sudo apt install -f
# Now install sublime text
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt update
sudo apt install sublime-text-installer
