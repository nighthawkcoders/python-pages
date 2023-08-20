#!/bin/bash

# MacOS required tools
#
# MacOS commands
# 
# Upgrade Homebrew and install xz (decompression utility)
echo "=== Upgrade Packages ==="
yes | brew update
yes | brew upgrade
yes | brew install xz # decompression utility

# Install rbenv, Ruby 3.1.4, and configure it
echo "=== Install Ruby ==="
yes | brew install rbenv
yes | rbenv install 3.1.4
rbenv global 3.1.4

# Configure rbenv to initialize in the shell
# echo 'if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi' >> ~/.zshrc
cat << 'EOF' >> ~/.zshrc
# Init rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
EOF
#
# Start a new terminal, test if Ruby 3.1.4 is set
rbenv versions 

# Install Python and Pip using Homebrew
echo "=== Install Python ==="
yes | brew install python

# Install Jupyter Notebook using Homebrew
echo "=== Install Jupyter Notebook ==="
yes | brew install jupyter

# Show the active Ruby version, MacOS is 3.1.4
ruby -v

# Show active Python version, it needs to be 3.9 or better
python --version
# Setup Python libraries for Notebook conversion
pip install nbconvert  # library for notebook conversion
pip install nbformat  # notebook file utility
pip install pyyaml  # notebook frontmatter

# Show Jupyter packages, nbconvert needs to be in the list
jupyter --version
# Show Kernels, python3 needs to be in list
jupyter kernelspec list

#### Github Pages Local Build
echo "=== GitHub pages build tools  ==="
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
#echo '# Install Ruby Gems to ~/gems' >> ~/.zshrc
#echo 'export GEM_HOME="$HOME/gems"' >> ~/.zshrc
#echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.zshrc
cat << 'EOF' >> ~/.zshrc
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
EOF

echo "=== Gem install starting, thinking... ==="
gem install jekyll bundler
echo "=== !!!Start a new Terminal!!! ==="
