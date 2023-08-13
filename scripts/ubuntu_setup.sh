#!/bin/bash

# Ubuntu required tools
#
#
echo "=== Ugrade Packages ==="
sudo apt update -y
sudo apt upgrade -y
#
echo "=== Install Ruby ==="
# sudo apt install. installs packages for Ubuntu
sudo apt install ruby-full build-essential zlib1g-dev -y
# the following "echo" commands adds gems installation directory into the .bashrc file, avoiding root requirements
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
#
echo "=== Install Jekyl ==="
gem install jekyll bundler
#