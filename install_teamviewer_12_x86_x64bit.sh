#!/bin/bash
# Use this script for Ubuntu only.
# By default this script will install 32bit Teamviewer
# To install 64bit, Uncomment 17th line and comment 18th line.
# Contact Email:- Navdeep.D2@gmail.com
echo "============================================"
echo -e "\e[1;32m REMOVING PREVIOUS TEAMVIEWER IF ANY ............ \e[0m"
echo "============================================"
sudo apt-get remove teamviewer -y
sudo apt autoremove -y
sudo apt-get remove teamviewer:i386 -y
sudo dpkg -r teamviewer:i386
sudo dpkg --purge teamviewer
sudo dpkg --purge teamviewer:i386
sudo apt autoremove -y
rm -fr /tmp/teamviewer*
#cd /tmp/ ; wget http://download.teamviewer.com/download/version_12x/teamviewer_amd64.deb
cd /tmp/ ; wget http://download.teamviewer.com/download/version_12x/teamviewer_i386.deb
sudo dpkg -i /tmp/teamviewe*
sudo apt-get install libgcc1 -y
sudo apt-get install libc6-i386 lib32asound2 lib32z1 ia32-libs lib32ncurses5 lib32z1
sudo apt-get -f install -y
sudo dpkg -l | grep -i teamviewer
if [[ $? != 0 ]]; then
echo "============================================"
echo -e "\e[1;31m TEAM VIEWER 12 INSTALLATION FAILED \e[0m"
echo "============================================"
else
echo "============================================"
echo -e "\e[1;32m TEAM VIEWER 12 INSTALLED SUCCESSFULLY \e[0m"
echo "============================================"
fi
