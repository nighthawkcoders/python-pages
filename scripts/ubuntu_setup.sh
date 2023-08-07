# Ubuntu requirements
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
echo "=== Install Conda ==="
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86.sh -O /tmp/miniconda.sh
chmod +x /tmp/miniconda.sh
/tmp/miniconda.sh -b -p $HOME/miniconda
# Configure conda into shell
# update conda
export PATH="$HOME/miniconda/bin:$PATH"
conda update -n base -y -c defaults conda
echo "=== Activate Conda  ==="
echo "source ~/.bashrc or relanuch terminal"
# source ~/.bashrc
# conda install -y -c conda-forge pyyam



