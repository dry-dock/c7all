#!/bin/bash -e
echo "================= Installing chrome ==================="
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
yum localinstall -y google-chrome-stable_current_x86_64.rpm 


echo "================= Installing Chrome driver ==================="
# install latest chromedriver release as we are installing latest stable chrome version
CHROME_DRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`
sudo wget http://chromedriver.storage.googleapis.com/"$CHROME_DRIVER_VERSION"/chromedriver_linux64.zip
sudo unzip chromedriver_linux64.zip && sudo rm -f chromedriver_linux64.zip
sudo mv chromedriver /usr/local/bin/chromedriver
sudo chmod a+x /usr/local/bin/chromedriver

echo "================= Installing firefox ==================="
wget http://ftp.mozilla.org/pub/firefox/releases/58.0/linux-x86_64/en-US/firefox-58.0.tar.bz2
tar xvjf firefox-58.0.tar.bz2
sudo ln -s /firefox/firefox /usr/bin/firefox

echo "================= Installing chromium ==================="
wget https://rpmfind.net/linux/Mandriva/devel/cooker/x86_64/media/main/release/lib64udev0-182-5-mdv2012.0.x86_64.rpm
sudo yum install lib64udev0-182-5-mdv2012.0.x86_64.rpm
wget https://centos.pkgs.org/7/russian-fedora-fixes-updates-x86_64/chromium-67.0.3396.99-1.el7.R.x86_64.rpm.html
sudo yum install chromium

echo "================= Installing Opera ==================="
wget http://get.geo.opera.com/pub/opera/linux/1216/opera-12.16-1860.x86_64.rpm
sudo yum install -y opera-12.16-1860.x86_64.rpm

echo "================= Installing Selenium ==================="
sudo mkdir /usr/local/selenium >/dev/null 2>&1
sudo wget http://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar -P /usr/local/selenium
