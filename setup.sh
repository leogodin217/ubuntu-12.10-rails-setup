#!/bin/sh

apt-get update
apt-get upgrade -y

echo "Now install some basics"
apt-get install -y  vim curl git subversion build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config aptitude  nodejs libgconf2-4 libxss1 wine libsdl1.2debian postgresql libpq-dev

echo "Don't forget Heroku"
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

echo "And Google Chrome"
curl https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb > /tmp/chrome.deb
dpkg -i /tmp/chrome.deb

echo "Now python and Django"

apt-get install -y python-imaging python-pythonmagick python-markdown python-textile python-docutils python-django

echo "An now Ruby and Rails"
curl -L https://get.rvm.io | bash -s stable --rails
source /etc/profile.d/rvm.sh
rvm --default 1.9.3

/usr/sbin/usermod -g rvm $USERNAME

echo "Get rid of that annoying bell"
echo 'set bell-style none' >> /etc/inputrc 
