#!/bin/bash
###########################################################################################
# Complete setup script for Debian/Ubuntu Systems         						                    #
###########################################################################################
sed -i 's/main$/main universe/' /etc/apt/sources.list
apt-get -qq update
apt-get install -y python-software-properties bsdmainutils curl file screen
apt-get -qq update
apt-get install -y bison build-essential curl flex git-core gnupg gperf libesd0-dev libncurses5-dev libsdl1.2-dev libwxgtk2.8-dev libxml2 libxml2-utils lzop openjdk-7-jdk openjdk-7-jre pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev
apt-get install -y g++-multilib gcc-multilib lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev
apt-get install -y tig
apt-get -qqy upgrade
useradd --create-home infamousrom
mkdir /home/infamousrom/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > /home/infamousrom/bin/repo
chmod a+x /home/infamousrom/bin/repo
echo "export PATH=${PATH}:/home/infamousrom/bin" >> /etc/bash.bashrc
echo "export USE_CCACHE=1" >> /etc/bash.bashrc
