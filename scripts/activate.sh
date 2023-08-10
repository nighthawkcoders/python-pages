## Terminal Commands
#### Installs ruby and gnu tools
echo "=== Missing Packages ==="
sudo apt -y install ruby-full build-essential

#### Github Pages Local Build
echo "=== GitHub pages build tools  ==="
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

gem install jekyll bundler

### Project Requirements
cd ~
git clone https://github.com/nighthawkcoders/student
cd ~/student
