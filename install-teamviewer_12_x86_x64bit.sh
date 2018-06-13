#!/bin/bash
echo "============================================"
echo -e "\e[1;32m REMOVING PREVIOUS TEAMVIEWER IF ANY ............ \e[0m"
echo "============================================"
apt-get remove teamviewer -y
apt autoremove -y
apt-get remove teamviewer:i386 -y
dpkg -r teamviewer:i386
dpkg --purge teamviewer
dpkg --purge teamviewer:i386
apt autoremove -y
rm -fr /tmp/teamviewer*
#cd /tmp/ ; wget http://download.teamviewer.com/download/version_12x/teamviewer_amd64.deb
cd /tmp/ ; wget http://download.teamviewer.com/download/version_12x/teamviewer_i386.deb
dpkg -i /tmp/teamviewe*
apt-get install libgcc1 -y
apt-get -f install -y
dpkg -l | grep -i teamviewer
if [[ $? != 0 ]]; then
echo "============================================"
echo -e "\e[1;31m TEAM VIEWER 12 INSTALLATION FAILED \e[0m"
echo "============================================"
else
echo "============================================"
echo -e "\e[1;32m TEAM VIEWER 12 INSTALLED SUCCESSFULLY \e[0m"
echo "============================================"
fi
