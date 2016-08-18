# Uninstall firefox
sudo apt purge firefox
rm -rf ~/.mozilla/firefox
rm -rf /etc/firefox
rm -rf /usr/lib/firefox
sudo rm -rf /usr/lib/firefox
sudo rm -rf /usr/lib/firefox-addons
# Remove misc. unnecessary packages
sudo apt purge libreoffice*
sudo apt purge pidgin*
sudo apt purge catfish
sudo apt purge mousepad
sudo apt purge *notes*
sudo apt purge onboard*
sudo apt purge orage
sudo apt purge gnome-mines
sudo apt purge gnome-sudoku
sudo apt purge simple-scan
sudo apt purge ristretto
sudo apt purge evince
sudo apt purge transmission*
sudo apt purge thunderbird*
sudo apt purge *screenshooter
sudo apt purge parole
sudo apt purge *pulse*
sudo apt purge *dict*
sudo apt autoremove
sudo apt autoclean
sudo apt clean
# Install Chrome stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
# Just in case we nuked any dependencies
sudo apt install -f
# Now install sublime text
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt update
sudo apt install sublime-text-installer
