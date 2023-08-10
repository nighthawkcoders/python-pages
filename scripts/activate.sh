## Terminal Commands
These commands validate serve capbilities

#### Installs ruby and gnu tools
```bash
echo "=== Missing Packages ==="
sudo apt installl ruby-full build-essential
```

#### Puts (base) in prompt
```bash
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc

echo "=== Make Conda environment (base) ==="
conda activate
```

#### Github Pages Local Build
```bash
echo "=== GitHub pages build tools  ==="
gem install jekyll bundler
```

### Project Requirements
```bash
cd ~
git clone https://github.com/nighthawkcoders/student
cd ~/student
```

#### Ruby Gems for project

```bash
bundle install
``` 

#### Run Webserver

```bash
bundle exec jekyll serve
```





